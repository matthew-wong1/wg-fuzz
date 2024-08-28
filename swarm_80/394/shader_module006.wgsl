struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<bool>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(vec4<u32>(0u, 0u, 0u, 886u), 4294967295u, vec4<bool>(true, true, true, true), vec4<u32>(1u, 1u, 0u, 59543u), vec3<u32>(12912u, 25575u, 88033u)), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 11943u), 49581u, vec4<bool>(true, true, false, false), vec4<u32>(52000u, 3762u, 0u, 1u), vec3<u32>(4294967295u, 24740u, 1u)), vec4<i32>(-1i, 8906i, 1i, 0i)), Struct_2(Struct_1(vec4<u32>(32676u, 1u, 0u, 1u), 0u, vec4<bool>(false, true, true, false), vec4<u32>(64001u, 7081u, 10627u, 0u), vec3<u32>(10810u, 0u, 50090u)), Struct_1(vec4<u32>(1u, 1u, 49516u, 35926u), 4294967295u, vec4<bool>(true, false, false, true), vec4<u32>(1u, 2432u, 0u, 0u), vec3<u32>(21784u, 1u, 45916u)), vec4<i32>(2147483647i, 1i, -1i, -25378i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_f32(582f * -1356f);
    var var_1 = global0[_wgslsmith_index_u32(4294967295u ^ abs(max(~firstTrailingBit(u_input.b.x), max(u_input.e, ~4294967295u))), 2u)];
    let var_2 = false;
    let var_3 = global0[_wgslsmith_index_u32((0u >> (~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, u_input.a.x)), ~var_1.a.d.zy) % 32u)) | _wgslsmith_mod_u32(reverseBits(abs(~var_1.a.d.x)), u_input.b.x), 2u)];
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-384f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-303f))), -614f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -449f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1161f, 104f)), _wgslsmith_div_f32(973f, -1027f), select(true, false, false))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-814f)) * _wgslsmith_f_op_f32(-428f * _wgslsmith_f_op_f32(min(-320f, 411f))))));
    return all(!select(!(!var_3.a.c.xx), vec2<bool>(var_3.c.x <= -85902i, any(vec2<bool>(true, var_3.a.c.x))), !var_2));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec4<u32>(u_input.b.x, abs(_wgslsmith_mult_u32(1u, 70715u)), u_input.a.x, 1u) << (_wgslsmith_clamp_vec4_u32(firstTrailingBit(u_input.a), vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~48970u, ~2031u, ~7736u), u_input.a) % vec4<u32>(32u)), ~52459u, select(vec4<bool>(true, true, func_3(), true), vec4<bool>(true, true, true, true), vec4<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true))), true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), true)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(_wgslsmith_mult_u32(4294967295u, u_input.b.x), ~0u, u_input.b.x, max(4294967295u, u_input.e))), _wgslsmith_sub_vec4_u32(u_input.a, select(u_input.a, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 33889u, u_input.b.x, u_input.e), u_input.a), true))), max(_wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b.x, 1u), u_input.a.xzy, u_input.a.xxx), ~(~vec3<u32>(0u, 80397u, 0u))), ~u_input.a.xyx));
    var_0 = Struct_1(firstTrailingBit(~_wgslsmith_mult_vec4_u32(var_0.a, u_input.a ^ vec4<u32>(15579u, 1u, 6224u, 1u))), _wgslsmith_add_u32(select(var_0.e.x, max(firstTrailingBit(51716u), var_0.b), any(vec3<bool>(true, var_0.c.x, true))), u_input.e), select(vec4<bool>(true, any(!vec4<bool>(var_0.c.x, var_0.c.x, true, false)), false, any(!vec3<bool>(true, var_0.c.x, var_0.c.x))), vec4<bool>(select(true, false, all(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x))), true, true, u_input.d > ~11076i), !any(vec2<bool>(var_0.c.x, true))), vec4<u32>(select(_wgslsmith_add_u32(4294967295u, 0u), 1u, true), ~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_0.a.x, 1268u)), firstTrailingBit(vec2<u32>(u_input.a.x, var_0.b))), 23676u, firstTrailingBit(1u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 18299u << (1u % 32u), 1u) ^ var_0.e, var_0.d.wxz));
    let var_1 = var_0.c;
    let var_2 = global0[_wgslsmith_index_u32(u_input.e, 2u)];
    return var_2.b;
}

fn func_1(arg_0: i32, arg_1: i32) -> f32 {
    var var_0 = any(select(vec2<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false))), !any(vec4<bool>(false, true, false, false))), vec2<bool>(true, true), select(true, u_input.a.x <= 4294967295u, all(vec2<bool>(true, false))) | any(vec3<bool>(true, true, true))));
    let var_1 = vec4<bool>(true, true, false, true);
    var var_2 = _wgslsmith_sub_u32(4019u, _wgslsmith_dot_vec2_u32(~(~u_input.b), ((u_input.b >> (vec2<u32>(53133u, u_input.a.x) % vec2<u32>(32u))) >> (u_input.b % vec2<u32>(32u))) | (select(u_input.a.yx, u_input.a.xw, var_1.x) << (vec2<u32>(u_input.a.x, u_input.e) % vec2<u32>(32u)))));
    let var_3 = func_2();
    let var_4 = Struct_1(vec4<u32>(u_input.c, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(13377u, 0u) ^ vec2<u32>(var_3.b, 4294967295u), vec2<u32>(0u, _wgslsmith_add_u32(4294967295u, u_input.b.x))), 1u), abs(~(~u_input.a.x) | _wgslsmith_mult_u32(firstLeadingBit(1u), 0u)), vec4<bool>(true, all(!vec2<bool>(true, var_1.x)) | false, var_1.x, var_1.x), select(u_input.a, min(vec4<u32>(var_3.d.x << (var_3.b % 32u), var_3.b, firstTrailingBit(4294967295u), var_3.a.x), vec4<u32>(u_input.b.x, var_3.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 4294967295u, var_3.b, u_input.c), vec4<u32>(34324u, var_3.e.x, var_3.a.x, 1u)), 1u)), false), ~vec3<u32>(u_input.e, ~4294967295u, max(var_3.a.x, var_3.a.x)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-404f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-805f - -1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1779f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(479f, -1254f), _wgslsmith_f_op_f32(select(-1000f, 1332f, var_1.x)), any(var_3.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1063f) + 1004f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(u_input.d, u_input.d)), _wgslsmith_f_op_f32(ceil(-709f)))))))));
    var var_1 = (_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -450i), reverseBits(vec2<i32>(-1i, u_input.d))), _wgslsmith_sub_vec2_i32(vec2<i32>(11861i, -42945i), max(vec2<i32>(u_input.d, 21457i), vec2<i32>(u_input.d, 1i)))) & u_input.d) & u_input.d;
    let var_2 = func_2();
    var_1 = reverseBits(-((-29344i >> (u_input.a.x % 32u)) ^ (i32(-1i) * -16371i)) | -(~u_input.d));
    var_1 = firstLeadingBit(u_input.d);
    let var_3 = func_2();
    var_1 = -34379i;
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(793f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(375f))))), -1295f, -527f));
}


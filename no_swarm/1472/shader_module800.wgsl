struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 58205u, 1u, 46320u);

var<private> global2: Struct_3 = Struct_3(2147483647i);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(458f, 803f, 256f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(354f, -141f, 1000f) - vec3<f32>(833f, -535f, 557f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1244f, 1560f, 314f) * vec3<f32>(-1000f, -524f, -1536f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(608f, -816f, 447f)))), global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-899f + _wgslsmith_f_op_f32(-310f - 858f)))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1442f);
    let var_1 = _wgslsmith_f_op_f32(-func_1().c);
    let var_2 = arg_1;
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1109f, _wgslsmith_f_op_f32(2176f - arg_1.c))), var_2.a)), _wgslsmith_mod_i32(u_input.e, arg_1.b), arg_1.c);
    var var_4 = arg_0;
    return ~(~(~vec4<u32>(4294967295u, 4294967295u, 1u ^ u_input.a, u_input.c)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<u32>) -> vec2<u32> {
    global1 = min(~(~vec4<u32>(1u, u_input.d, 0u, u_input.c)), vec4<u32>(0u, _wgslsmith_div_u32(68678u, ~u_input.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, u_input.d, 2762u, global0[_wgslsmith_index_u32(0u, 29u)]), vec4<u32>(global0[_wgslsmith_index_u32(arg_1.x, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 63874u, 5312u)), global1.x & 25198u)) ^ select(vec4<u32>(select(162387u, ~u_input.a, false), max(~global0[_wgslsmith_index_u32(4294967295u, 29u)], 0u ^ u_input.a), firstTrailingBit(~4294967295u), ~(~4294967295u)), func_3(Struct_3(firstTrailingBit(0i)), Struct_4(_wgslsmith_f_op_vec3_f32(-arg_0.a), arg_0.b, arg_0.a.x)), false);
    let var_0 = ~(~vec4<u32>(~arg_1.x ^ ~15607u, 52368u, ~0u, 3943u));
    global0 = array<u32, 29>();
    let var_1 = Struct_3(-(~8364i));
    var var_2 = min(max(_wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(var_1.a, 0i, global2.a, 1i)), ~vec4<i32>(var_1.a, u_input.e, 0i, global2.a)), -2147483647i), global2.a);
    return ~(~min(~select(vec2<u32>(global1.x, 1u), arg_1, true), ~_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.x, 1u), vec2<u32>(global0[_wgslsmith_index_u32(global1.x, 29u)], 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 29>();
    var var_0 = _wgslsmith_mult_vec2_u32(func_2(func_1(), abs(select(vec2<u32>(0u, 0u), vec2<u32>(19657u, 1u), true))), ~global1.zy & _wgslsmith_div_vec2_u32(global1.yx, vec2<u32>(global0[_wgslsmith_index_u32(global1.x, 29u)], 3079u))) << (~global1.zx % vec2<u32>(32u));
    global1 = ~vec4<u32>(abs(func_3(Struct_3(u_input.e), Struct_4(vec3<f32>(611f, 1523f, -571f), -1i, 738f)).x), ~_wgslsmith_div_u32(1u, 4294967295u), ~1u, 34408u) << (vec4<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(abs(~0u), 29u)]), var_0.x, _wgslsmith_clamp_u32(global1.x, 10135u, _wgslsmith_add_u32(u_input.b, 29098u)), var_0.x) % vec4<u32>(32u));
    let var_1 = Struct_1(select(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-2147483647i, u_input.e, -13674i), 0i), u_input.e), ~(~(~vec2<i32>(-42176i, global2.a))), true), func_3(Struct_3(u_input.e), Struct_4(func_1().a, _wgslsmith_mod_i32(15895i, 2147483647i), _wgslsmith_div_f32(977f, -1514f))).yx, !(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))));
    let var_2 = firstLeadingBit(vec2<i32>(var_1.a.x, _wgslsmith_add_i32(-14343i, 1i)));
    global1 = ~(~(vec4<u32>(abs(var_0.x), ~1u, func_3(Struct_3(87010i), Struct_4(vec3<f32>(181f, 1000f, 866f), 1i, 1073f)).x, var_1.b.x) << ((select(vec4<u32>(1u, var_1.b.x, u_input.c, u_input.c), vec4<u32>(955u, 0u, global1.x, u_input.c), vec4<bool>(var_1.c.x, true, false, true)) >> (~vec4<u32>(22739u, var_1.b.x, 4294967295u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_3 = Struct_5(Struct_3(i32(-1i) * -(i32(-1i) * -1i)), _wgslsmith_clamp_i32(global2.a, (0i & countOneBits(u_input.e)) | var_1.a.x, var_2.x), ~var_2);
    let var_4 = Struct_2(Struct_1(~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.a.x, -1i), reverseBits(var_2), var_3.c), global1.zx, select(!vec3<bool>(var_1.c.x, var_1.c.x, true), vec3<bool>(any(vec2<bool>(var_1.c.x, var_1.c.x)), true, !var_1.c.x), vec3<bool>(true, true, true))));
    global2 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(582f, -610f))), 1207f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(max(-336f, 467f)), -1000f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -479f)) + _wgslsmith_div_f32(-707f, -472f)), _wgslsmith_f_op_f32(abs(631f))))));
}


struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> bool {
    var var_0 = -833f;
    let var_1 = !(!all(vec2<bool>(true, true)));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1582f + -654f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(818f))))))));
    let var_2 = Struct_3(Struct_2(!(!vec2<bool>(var_1, true))));
    var var_3 = !(!vec3<bool>(select(all(vec4<bool>(true, var_2.a.a.x, var_2.a.a.x, false)), false, any(vec3<bool>(true, true, var_1))), true != var_1, true));
    return !any(select(vec4<bool>(var_2.a.a.x, var_3.x, false, u_input.b > u_input.b), vec4<bool>(true, any(vec2<bool>(var_1, var_1)), true, var_2.a.a.x), select(vec4<bool>(var_2.a.a.x, var_1, false, true), select(vec4<bool>(true, true, var_3.x, true), vec4<bool>(true, var_3.x, false, var_3.x), vec4<bool>(var_2.a.a.x, false, var_2.a.a.x, false)), true)));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 16>();
    var var_0 = Struct_3(Struct_2(!(!(!arg_0.a))));
    let var_1 = Struct_3(var_0.a);
    let var_2 = Struct_1(reverseBits(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 26772i, 1i), vec3<i32>(-5838i, 2147483647i, -8324i)))) & vec3<i32>(~(-1191i), abs(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(55423i, -56417i), _wgslsmith_mod_vec2_i32(vec2<i32>(-48050i, 4279i), vec2<i32>(3411i, -9256i)))), _wgslsmith_f_op_f32(-332f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1236f - _wgslsmith_f_op_f32(f32(-1f) * -468f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(600f)) + -245f))), any(!(!(!vec2<bool>(false, var_0.a.a.x)))));
    var var_3 = var_2;
    return Struct_1((var_3.a & var_2.a) >> (~vec3<u32>(_wgslsmith_mult_u32(57096u, u_input.b), firstTrailingBit(6773u), max(u_input.b, 4294967295u)) % vec3<u32>(32u)), 1497f, func_3());
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_2, 16>();
    let var_0 = func_2(global0[_wgslsmith_index_u32(~4294967295u, 16u)]);
    let var_1 = var_0.c;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-659f))));
    let var_3 = Struct_3(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~u_input.a.x, min(u_input.b, 20669u), u_input.b), ~u_input.b, u_input.a.x), 16u)]);
    return Struct_1(_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(var_0.a.x, _wgslsmith_add_i32(var_0.a.x, var_0.a.x), var_0.a.x ^ var_0.a.x)), vec3<i32>(_wgslsmith_clamp_i32(var_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0.a.x), vec2<i32>(1i, 1i)), select(-33741i, var_0.a.x, false)), 1i, abs(-2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1036f + var_2))), all(!(!vec4<bool>(var_3.a.a.x, var_0.c, false, true))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = vec3<bool>(any(!vec4<bool>(arg_0.c, false, true, true)) || select(true, arg_0.c, !arg_0.c), (false && (arg_0.c || true)) & arg_0.c, true && func_2(global0[_wgslsmith_index_u32(u_input.a.x ^ ~0u, 16u)]).c);
    var var_1 = firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>((0i >> (u_input.b % 32u)) & arg_0.a.x, abs(arg_0.a.x)), min(vec2<i32>(-35862i, arg_0.a.x), arg_0.a.zz << (u_input.a.zx % vec2<u32>(32u))) << (~u_input.a.yy % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(62562i, arg_0.a.x), arg_0.a.xx << (u_input.a.yx % vec2<u32>(32u)))));
    var var_2 = Struct_2(vec2<bool>(any(!select(var_0.xx, vec2<bool>(arg_0.c, true), vec2<bool>(false, true))), any(vec3<bool>(arg_0.c, arg_0.c, arg_1.x < arg_1.x))));
    let var_3 = func_2(global0[_wgslsmith_index_u32(~(~u_input.b), 16u)]);
    var_0 = vec3<bool>(false, arg_0.b >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.b))), !var_0.x);
    return func_2(Struct_2(var_0.xy));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 16>();
    let var_0 = global0[_wgslsmith_index_u32(abs(u_input.b), 16u)];
    var var_1 = select(firstLeadingBit(firstTrailingBit(vec4<i32>(68424i, -11318i << (u_input.b % 32u), _wgslsmith_div_i32(1i, 8746i), _wgslsmith_clamp_i32(-2147483647i, 2147483647i, -2147483647i)))), vec4<i32>(abs(1i) >> (u_input.b % 32u), 2147483647i, ~(-2147483647i), -22143i), !select(vec4<bool>(!var_0.a.x, !var_0.a.x, true, any(vec3<bool>(var_0.a.x, true, false))), vec4<bool>(true, any(vec2<bool>(false, var_0.a.x)), select(var_0.a.x, var_0.a.x, var_0.a.x), var_0.a.x & var_0.a.x), !select(vec4<bool>(var_0.a.x, var_0.a.x, false, false), vec4<bool>(var_0.a.x, true, false, var_0.a.x), vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x))));
    let var_2 = 25486u;
    let var_3 = func_4(func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1684f, -1210f, -1611f, 179f), vec4<f32>(806f, 225f, -471f, 145f))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1112f, -1545f, -984f, -665f), vec4<f32>(201f, -1817f, 1915f, 294f))))))), -963f);
    let var_4 = Struct_3(global0[_wgslsmith_index_u32(76873u, 16u)]);
    var_1 = vec4<i32>(_wgslsmith_add_i32(var_1.x, min(~0i, -2147483647i ^ var_1.x)), var_1.x, ~_wgslsmith_div_i32(countOneBits(var_1.x), var_1.x), var_3.a.x) ^ ~select(_wgslsmith_sub_vec4_i32(~vec4<i32>(-2385i, -17800i, var_1.x, -53557i), min(vec4<i32>(-1i, -1i, var_3.a.x, var_3.a.x), vec4<i32>(var_1.x, -2719i, var_3.a.x, -2147483647i))), _wgslsmith_mult_vec4_i32(-vec4<i32>(var_3.a.x, 8996i, var_1.x, var_1.x), min(vec4<i32>(-2147483647i, 1i, 0i, var_3.a.x), vec4<i32>(var_3.a.x, var_3.a.x, var_1.x, var_1.x))), select(select(vec4<bool>(var_3.c, true, true, true), vec4<bool>(var_4.a.a.x, true, false, var_3.c), false), vec4<bool>(false, var_3.c, var_4.a.a.x, var_3.c), false == var_0.a.x));
    let var_5 = Struct_3(global0[_wgslsmith_index_u32(var_2, 16u)]);
    let x = u_input.a;
    s_output = StorageBuffer(abs(18234u), -1701f, _wgslsmith_mult_vec4_u32(vec4<u32>(27328u ^ u_input.b, _wgslsmith_clamp_u32(~var_2, _wgslsmith_div_u32(var_2, 24475u), u_input.b), ~1u, 4294967295u >> (reverseBits(u_input.b) % 32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(4294967295u, 1u), ~1u, 0u, ~u_input.a.x), _wgslsmith_mult_vec4_u32(select(vec4<u32>(52598u, var_2, 67479u, u_input.a.x), vec4<u32>(0u, u_input.a.x, 1u, var_2), vec4<bool>(true, var_5.a.a.x, var_5.a.a.x, false)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2, 21589u, 10977u, u_input.a.x), vec4<u32>(78099u, 4294967295u, 16935u, u_input.a.x))), ~vec4<u32>(u_input.b, 0u, 87525u, var_2))));
}


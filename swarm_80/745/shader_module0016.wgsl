struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: array<vec2<u32>, 5>;

var<private> global2: u32 = 41987u;

var<private> global3: array<Struct_2, 21>;

var<private> global4: i32 = -27441i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = 15677u >> (reverseBits(reverseBits(~u_input.a.x)) % 32u);
    var var_1 = _wgslsmith_sub_vec4_u32(~((select(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 61263u, u_input.a.x), global0[_wgslsmith_index_u32(0u, 12u)]) ^ ~vec4<u32>(1u, u_input.a.x, 46979u, u_input.a.x)) << (vec4<u32>(1u, reverseBits(0u), ~u_input.a.x, ~70136u) % vec4<u32>(32u))), min(vec4<u32>(6717u, u_input.a.x, min(4294967295u, ~0u), u_input.a.x), max(countOneBits(max(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x))), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(46013u, 89629u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x))))));
    var var_2 = global0[_wgslsmith_index_u32(~(~(var_1.x | var_1.x) ^ select(reverseBits(3310u), u_input.a.x | _wgslsmith_sub_u32(var_1.x, 1u), !select(true, false, global0[_wgslsmith_index_u32(var_1.x, 12u)]))), 12u)];
    global0 = array<bool, 12>();
    var var_3 = -44925i;
    return true;
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<i32>, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = !select(vec4<bool>(false, select(true, arg_3.x <= -1170f, func_3()), any(select(vec4<bool>(global0[_wgslsmith_index_u32(80754u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], arg_1, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], true, global0[_wgslsmith_index_u32(182u, 12u)], arg_1), true)), any(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(1757u, 12u)]))), vec4<bool>(false, !arg_1 || any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], arg_1, true)), true && func_3(), true), select(all(select(vec4<bool>(arg_1, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], arg_1, true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 12u)], false), vec4<bool>(global0[_wgslsmith_index_u32(22030u, 12u)], true, global0[_wgslsmith_index_u32(48452u, 12u)], arg_1))), global0[_wgslsmith_index_u32(u_input.a.x, 12u)], _wgslsmith_div_u32(u_input.a.x, u_input.a.x) == ~u_input.a.x));
    let var_1 = 528f;
    var var_2 = Struct_3(_wgslsmith_sub_i32(~abs(arg_2.x >> (u_input.a.x % 32u)), -33661i), Struct_1(4294967295u, _wgslsmith_f_op_f32(-arg_3.x)), ~reverseBits(_wgslsmith_div_u32(~u_input.a.x, u_input.a.x)));
    global4 = reverseBits(_wgslsmith_mult_i32(arg_2.x, arg_2.x)) >> (~68636u % 32u);
    let var_3 = Struct_3(-1011i, Struct_1(~u_input.a.x, _wgslsmith_f_op_f32(select(var_1, var_1, ~42540u >= abs(var_2.b.a)))), ~firstTrailingBit(abs(reverseBits(4294967295u))));
    return Struct_3(var_2.a, Struct_1(var_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.b) + var_3.b.b) - arg_0.x)), var_3.b.a);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> u32 {
    let var_0 = select(vec2<bool>(true, true), !select(!(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 12u)], false)), vec2<bool>(global0[_wgslsmith_index_u32(arg_1.c, 12u)], global0[_wgslsmith_index_u32(arg_1.b.a, 12u)]), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.b.a, 12u)]))), global0[_wgslsmith_index_u32(~arg_1.b.a, 12u)]);
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_1.b.b, arg_1.b.b, arg_1.b.b) - vec4<f32>(-236f, 736f, arg_1.b.b, arg_1.b.b))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, 941f, -725f, arg_0.x))))), all(!select(select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(arg_1.c, 12u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), false), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, global0[_wgslsmith_index_u32(arg_1.c, 12u)], false), var_0.x), vec3<bool>(true, true, true))), vec2<i32>(countOneBits(abs(arg_1.a)), _wgslsmith_sub_i32(arg_1.a, 0i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -110f, 2181f, 203f)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_1.b.b, 431f), vec4<f32>(arg_0.x, arg_1.b.b, 190f, arg_0.x))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x), arg_0.x, func_2(vec4<f32>(arg_0.x, 1470f, arg_0.x, -1338f), true, vec2<i32>(arg_1.a, arg_1.a) >> (vec2<u32>(u_input.a.x, arg_1.b.a) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2264f, arg_1.b.b, arg_0.x, arg_1.b.b))).b.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_0.x))))))).b;
    var var_2 = arg_1.b;
    global1 = array<vec2<u32>, 5>();
    global1 = array<vec2<u32>, 5>();
    return _wgslsmith_mult_u32(48355u, firstTrailingBit(4294967295u));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> StorageBuffer {
    var var_0 = u_input.a.x;
    global0 = array<bool, 12>();
    global3 = array<Struct_2, 21>();
    global2 = max(17275u, ~u_input.a.x);
    let var_1 = u_input.a.x;
    return StorageBuffer(abs(19419u >> (_wgslsmith_mod_u32(u_input.a.x, 4294967295u) % 32u)), arg_0, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1080f, -994f, -2322f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1423f, 330f, 506f)))), func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-279f, 2571f, -1383f, 472f))), select(true, true, any(vec2<bool>(false, false))), ~vec2<i32>(arg_0, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1846f, 260f, -852f, -1141f)))), 52056i, 31994u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_sub_u32(u_input.a.x, ~0u) >> (~17765u % 32u);
    let var_0 = _wgslsmith_clamp_u32(u_input.a.x, 1u, 4294967295u);
    global4 = ~2147483647i;
    global1 = array<vec2<u32>, 5>();
    global1 = array<vec2<u32>, 5>();
    let x = u_input.a;
    s_output = func_1(2147483647i, vec3<bool>(true & !(var_0 == 1u), false, all(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(36224u, 12u)], false)))));
}


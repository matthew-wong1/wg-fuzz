struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<bool>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(133f, -557f);

var<private> global1: array<i32, 29>;

var<private> global2: array<bool, 26> = array<bool, 26>(true, false, false, true, true, false, true, true, true, true, false, true, false, false, true, false, false, true, false, false, true, false, true, true, true, true);

var<private> global3: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    let var_0 = arg_0.e;
    global3 = array<vec4<bool>, 8>();
    let var_1 = _wgslsmith_div_u32(_wgslsmith_add_u32(var_0.b, ~1u), ~(4294967295u >> (1u % 32u)));
    let var_2 = Struct_2(arg_0.a, u_input.a, select(!arg_0.a.c, select(vec4<bool>(var_0.e, any(arg_0.a.c), var_0.a.x == 0u, all(var_0.c.zw)), var_0.c, select(global3[_wgslsmith_index_u32(20879u, 8u)], select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], false, arg_0.e.c.x, true), vec4<bool>(false, true, false, true), false), arg_0.e.c.x)), select(!select(arg_0.a.c, vec4<bool>(true, false, var_0.c.x, false), var_0.c), vec4<bool>(false, !arg_0.a.c.x, arg_0.e.e == var_0.c.x, arg_0.e.b > 49003u), !(global2[_wgslsmith_index_u32(46453u, 26u)] && false))), var_0.d);
    var var_3 = !any(vec2<bool>(false, !var_2.c.x));
    return firstTrailingBit(~arg_0.a.a);
}

fn func_2(arg_0: bool, arg_1: u32) -> bool {
    let var_0 = Struct_3(Struct_1(func_3(Struct_3(Struct_1(vec4<u32>(11666u, arg_1, 70929u, arg_1), arg_1, global3[_wgslsmith_index_u32(arg_1, 8u)], 862f, true), -950f, _wgslsmith_f_op_f32(f32(-1f) * -893f), _wgslsmith_f_op_f32(global0.x * global0.x), Struct_1(vec4<u32>(arg_1, arg_1, 31562u, 1u), 1u, vec4<bool>(arg_0, arg_0, false, true), 849f, true))), firstLeadingBit(arg_1) ^ (~arg_1 | _wgslsmith_mult_u32(1u, 0u)), select(select(vec4<bool>(arg_0, arg_0, true, arg_0), select(vec4<bool>(arg_0, false, true, false), global3[_wgslsmith_index_u32(5720u, 8u)], global2[_wgslsmith_index_u32(arg_1, 26u)]), global3[_wgslsmith_index_u32(arg_1, 8u)]), global3[_wgslsmith_index_u32(arg_1, 8u)], vec4<bool>(arg_1 > arg_1, false || global2[_wgslsmith_index_u32(52479u, 26u)], true, true)), -1907f, ~max(global1[_wgslsmith_index_u32(arg_1, 29u)], -22474i) < 4593i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1340f + -1155f), -427f), global0.x, !(!global2[_wgslsmith_index_u32(1u, 26u)]))), _wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -1222f), _wgslsmith_f_op_f32(global0.x * global0.x))))), 1031f, _wgslsmith_f_op_f32(-global0.x), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(min(4294967295u, arg_1), 21600u, arg_1, _wgslsmith_mult_u32(36910u, 10950u)), ~vec4<u32>(arg_1, arg_1, arg_1, 1491u) & firstLeadingBit(vec4<u32>(arg_1, 37949u, 15011u, arg_1)), ~vec4<u32>(1u, 1u, 1u, 1u)), 3038u, vec4<bool>(global2[_wgslsmith_index_u32(~(~4294967295u), 26u)], (u_input.a ^ -2147483647i) == 7118i, arg_0 == arg_0, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(118f)) + global0.x), global0.x), true));
    let var_1 = var_0.e;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -784f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_0.c)));
    global2 = array<bool, 26>();
    let var_3 = min(select(vec4<u32>(var_1.b, var_0.e.b, _wgslsmith_div_u32(var_1.b, var_1.b), var_0.a.b) >> (var_1.a % vec4<u32>(32u)), ~vec4<u32>(arg_1, _wgslsmith_add_u32(var_0.a.b, arg_1), abs(4294967295u), 4294967295u), select(select(var_0.e.c, select(vec4<bool>(false, var_0.e.c.x, var_0.e.c.x, true), var_0.a.c, true), !arg_0), select(global3[_wgslsmith_index_u32(abs(0u), 8u)], var_1.c, all(vec4<bool>(var_0.e.e, var_1.e, true, true))), vec4<bool>(arg_0, true, var_1.a.x <= 122336u, var_0.a.e))), reverseBits(~var_0.a.a));
    return var_1.c.x;
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = vec2<bool>(any(vec3<bool>(true, true, true)), !(global2[_wgslsmith_index_u32(0u, 26u)] || arg_0.x) | arg_0.x);
    let var_1 = ~vec4<u32>(1u, 1u, 1u, 1u);
    var var_2 = func_2(true, countOneBits(~_wgslsmith_mult_u32(5107u, 60636u)));
    var var_3 = Struct_2(Struct_1(firstTrailingBit(~(~var_1)), ~(~(~var_1.x)), vec4<bool>(false, var_0.x, any(vec4<bool>(false, false, var_0.x, true)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_1.wyy, var_1.ywx), select(var_1.zxy, var_1.xwy, arg_0.x)), 26u)]), _wgslsmith_f_op_f32(trunc(global0.x)), var_0.x), _wgslsmith_clamp_i32(44236i, ~62559i, u_input.a), select(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(0u, abs(var_1.x)), _wgslsmith_dot_vec4_u32(~var_1, _wgslsmith_mult_vec4_u32(var_1, var_1))), 8u)], global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, 0u), 8u)], all(vec2<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(var_1.x, 26u)], global2[_wgslsmith_index_u32(var_1.x, 26u)])), var_0.x))), 761f);
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 842f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.d, -313f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(var_3.d, -921f)), _wgslsmith_f_op_f32(global0.x * 1000f)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1000f))))), select(select(select(var_3.a.c.yx, vec2<bool>(arg_0.x, global2[_wgslsmith_index_u32(68692u, 26u)]), true), !var_3.a.c.xx, select(var_3.c.yx, var_3.a.c.xx, arg_0.yy)), select(vec2<bool>(global2[_wgslsmith_index_u32(var_1.x, 26u)], var_3.a.e), vec2<bool>(arg_0.x, true), !var_3.c.zw), (var_3.a.d >= var_3.a.d) | any(global3[_wgslsmith_index_u32(var_3.a.b, 8u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(294f, global0.x)), vec2<f32>(var_3.a.d, var_3.d)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.d, var_3.a.d), vec2<f32>(1701f, 885f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.d, 591f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.d, global0.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-998f, var_3.a.d))))), !arg_0.zy));
    return Struct_2(var_3.a, global1[_wgslsmith_index_u32(~max(~4294967295u, 1u) ^ var_1.x, 29u)], global3[_wgslsmith_index_u32(func_3(Struct_3(var_3.a, 892f, 148f, global0.x, var_3.a)).x, 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f))) - _wgslsmith_f_op_f32(floor(var_3.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 26u)], true), vec3<bool>(global2[_wgslsmith_index_u32(0u, 26u)], false, global2[_wgslsmith_index_u32(13087u, 26u)]), vec3<bool>(false, true, false)), !(!vec3<bool>(global2[_wgslsmith_index_u32(33786u, 26u)], false, false)), global2[_wgslsmith_index_u32(4294967295u >> (~4294967295u % 32u), 26u)]));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1323f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(f32(-1f) * -1484f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) + -1055f)) + global0.x));
    var var_1 = 9376i;
    let var_2 = func_1(select(var_0, select(!(!var_0), vec3<bool>(true, !var_0.x, true), !(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], true, global2[_wgslsmith_index_u32(40311u, 26u)]))), all(var_0)));
    let var_3 = !func_1(var_0).a.c.xy;
    let var_4 = var_2.b;
    var var_5 = _wgslsmith_f_op_f32(sign(var_2.d));
    let var_6 = var_2;
    let var_7 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-447f, _wgslsmith_mod_u32(_wgslsmith_add_u32(var_6.a.b, min(~var_2.a.a.x, var_6.a.a.x)), ~4294967295u), ~var_6.a.b, _wgslsmith_div_u32(firstLeadingBit(29280u) >> (_wgslsmith_mult_u32(4294967295u, var_2.a.a.x) % 32u), ~func_3(Struct_3(Struct_1(vec4<u32>(var_2.a.a.x, 68807u, var_2.a.a.x, 4294967295u), 12609u, var_2.a.c, 198f, var_6.a.c.x), var_6.a.d, var_6.a.d, global0.x, var_2.a)).x) ^ (~(~4294967295u) ^ ~(var_6.a.a.x | var_2.a.b)));
}


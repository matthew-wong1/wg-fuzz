struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-2754i, 1i, 2147483647i, 18729i);

var<private> global1: array<bool, 32> = array<bool, 32>(true, true, true, true, true, true, true, false, false, true, false, false, true, false, false, true, false, false, false, true, true, true, false, true, false, false, true, false, true, true, true, false);

var<private> global2: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>) -> u32 {
    return u_input.b.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_sub_vec2_u32(~countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(14880u, u_input.a), vec2<u32>(u_input.a, u_input.a))) << (~vec2<u32>(735u, 48617u) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(1485u, 1u)));
    global1 = array<bool, 32>();
    var var_1 = arg_1;
    global2 = arg_0;
    var var_2 = true;
    return -2147483647i;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global2 = Struct_1(global1[_wgslsmith_index_u32(~62622u, 32u)], i32(-1i) * -_wgslsmith_clamp_i32(~global2.b, abs(-17355i), _wgslsmith_dot_vec2_i32(global0.zz, global0.ww)), _wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))));
    global1 = array<bool, 32>();
    var var_0 = select(!(!(!select(vec4<bool>(global1[_wgslsmith_index_u32(5705u, 32u)], false, false, global2.a), vec4<bool>(false, true, arg_0.a, false), arg_0.a))), vec4<bool>(true, arg_1.a, global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b.x, u_input.a), func_2(Struct_1(global2.a, -10296i, -1074f), u_input.a, vec3<bool>(global2.a, arg_1.a, arg_1.a))), 32u)], true), arg_1.b > _wgslsmith_div_i32(abs(func_3(Struct_1(false, -20344i, arg_1.c), arg_1, global0.x)), 0i));
    var var_1 = -37482i;
    var var_2 = Struct_1(true || global2.a, arg_1.b, global2.c);
    return -_wgslsmith_sub_i32(~select(-global2.b, var_2.b, all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], true))), ~arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 108185u >> (_wgslsmith_div_u32(~(~2017u), ~u_input.b.x) % 32u);
    global2 = Struct_1(true, global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1166f, global2.c)) * _wgslsmith_f_op_f32(round(global2.c))) * _wgslsmith_f_op_f32(f32(-1f) * -155f)));
    global0 = -(~vec4<i32>(global2.b, -2147483647i, func_1(Struct_1(global2.a, -26894i, global2.c), Struct_1(true, global2.b, global2.c)), -19470i) & _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, 12889i, global0.x, 50649i) | -vec4<i32>(global0.x, global2.b, 1i, 5496i), vec4<i32>(-1i, _wgslsmith_mod_i32(-2147483647i, global0.x), 34772i, global2.b & global2.b)));
    global2 = Struct_1(true, 85936i, global2.c);
    let var_1 = func_1(Struct_1(global2.a, func_3(Struct_1(all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 32u)])), 19085i, -1428f), Struct_1(all(vec3<bool>(global2.a, false, true)), _wgslsmith_mult_i32(global2.b, 1i), _wgslsmith_f_op_f32(select(-1178f, 240f, global2.a))), 0i), global2.c), Struct_1(!global2.a, func_1(Struct_1(select(global1[_wgslsmith_index_u32(u_input.a, 32u)], global2.a, global2.a), _wgslsmith_sub_i32(25749i, global2.b), _wgslsmith_f_op_f32(global2.c + global2.c)), Struct_1(!global2.a, _wgslsmith_dot_vec2_i32(global0.wz, global0.xy), _wgslsmith_f_op_f32(max(942f, global2.c)))), -129f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(236f, global2.c, -261f, -1711f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, -657f, -973f, 1000f) + vec4<f32>(237f, global2.c, -864f, global2.c)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(218f, global2.c, global2.c, global2.c))) + vec4<f32>(global2.c, global2.c, global2.c, -1348f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.c, -1291f, _wgslsmith_f_op_f32(331f + 896f), -2313f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, global2.c, global2.c, global2.c) * vec4<f32>(global2.c, -1000f, global2.c, -391f))), vec4<f32>(775f, _wgslsmith_f_op_f32(global2.c * global2.c), 1374f, -179f), !all(vec2<bool>(true, true))))), ~reverseBits(max(_wgslsmith_mult_i32(-23102i, -16908i), -2147483647i)));
}


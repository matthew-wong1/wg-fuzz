struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 40610u, 4294967295u, 1700u);

var<private> global1: Struct_3;

var<private> global2: Struct_1;

var<private> global3: array<Struct_3, 2>;

var<private> global4: bool = true;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> i32 {
    global1 = global3[_wgslsmith_index_u32(24794u, 2u)];
    return 1i;
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = global1.c;
    global3 = array<Struct_3, 2>();
    let var_1 = Struct_2(global1.b, _wgslsmith_div_u32(1u, global0.x), arg_1.d);
    global2 = Struct_1(func_3(global1.a), global1.b.b, _wgslsmith_f_op_f32(max(global2.b.x, _wgslsmith_f_op_f32(-global2.c))));
    global4 = any(!select(!(!vec4<bool>(false, global1.a, global1.c, global1.a)), vec4<bool>(global1.a, true, true, any(vec3<bool>(false, true, global1.c))), !vec4<bool>(global1.a, false, global1.c, arg_1.a)));
    return Struct_1(_wgslsmith_mult_i32(~global1.b.a, ~(-arg_0 & ~0i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(245f, -166f, var_1.a.c, 1000f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.b.b), vec4<f32>(var_1.a.b.x, var_1.a.b.x, var_1.a.c, 1512f))))), 828f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32) -> Struct_3 {
    let var_0 = Struct_3(select(127874u == _wgslsmith_mult_u32(global0.x, 1u >> (global1.d % 32u)), true, ((global1.c | true) | global1.a) || false), func_2(2147483647i, arg_1), !(arg_0.b.x < arg_1.b.b.x), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(global0.zyw, ~global0.zxw, global0.zyw), abs(~vec3<u32>(global1.d, global0.x, global1.d))));
    global4 = var_0.c;
    global3 = array<Struct_3, 2>();
    return var_0;
}

fn func_1(arg_0: i32, arg_1: i32) -> f32 {
    var var_0 = func_4(func_2(-11717i, global3[_wgslsmith_index_u32(~(~1u), 2u)]), global3[_wgslsmith_index_u32(1u, 2u)], 2147483647i);
    var var_1 = Struct_2(func_2(arg_0, func_4(global1.b, global3[_wgslsmith_index_u32(global1.d, 2u)], -arg_0)), 58742u, ~global0.x | min(global1.d | min(4294967295u, global0.x), _wgslsmith_div_u32(_wgslsmith_add_u32(68359u, var_0.d), abs(51869u))));
    global2 = func_2(var_1.a.a, Struct_3((false | global1.c) & true, Struct_1(abs(countOneBits(arg_1)), func_2(1i, func_4(Struct_1(arg_1, var_0.b.b, 1862f), global3[_wgslsmith_index_u32(global0.x, 2u)], 18420i)).b, _wgslsmith_f_op_f32(var_0.b.c + global2.c)), any(vec2<bool>(select(false, false, global1.a), all(vec3<bool>(var_0.a, var_0.c, global1.c)))), abs(~var_1.c) >> (4294967295u % 32u)));
    var var_2 = Struct_3(true, var_0.b, !all(!vec2<bool>(false, var_0.a)), 1u);
    var_1 = Struct_2(func_2(max(_wgslsmith_div_i32(i32(-1i) * -41208i, 1i), 1i), global3[_wgslsmith_index_u32(var_2.d, 2u)]), global0.x, var_1.b);
    return -283f;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: f32) -> vec3<f32> {
    global2 = Struct_1(1i, _wgslsmith_f_op_vec4_f32(-global1.b.b), -792f);
    let var_0 = arg_0.d;
    var var_1 = !(!(!(!vec3<bool>(global1.a, arg_0.a, global1.a))));
    let var_2 = -u_input.b;
    var var_3 = Struct_3(!(!(!var_1.x)), global1.b, false, firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(global0.xy, global0.wx, vec2<u32>(0u, global1.d)), global0.xw), global0.yz)));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(global1.b.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(global2.a, global1.b.a)), arg_1.x, global1.d > 49689u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(643f, global2.c, var_3.c)) * 1121f)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -386f), -259f)), func_2(_wgslsmith_sub_i32(global2.a, 79070i), Struct_3(var_1.x, Struct_1(arg_0.b.a, vec4<f32>(298f, global1.b.b.x, global2.c, global2.b.x), arg_1.x), arg_0.a, 18725u)).c, func_4(Struct_1(-25741i, vec4<f32>(arg_2, global1.b.c, 226f, arg_2), arg_2), Struct_3(true, Struct_1(global2.a, arg_0.b.b, 546f), false, var_3.d), global2.a ^ global1.b.a).b.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(1u, 2u)];
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(global3[_wgslsmith_index_u32(13173u, 2u)], vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.b.c))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(-29846i, var_0.b.a)))), _wgslsmith_div_f32(global1.b.c, _wgslsmith_f_op_f32(-714f + global2.c)), global1.b.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-655f)), -1000f, !var_0.c && (global0.x >= 0u))))), global1.b.b.wxx);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.c));
    var var_3 = global1.a || var_0.c;
    global1 = Struct_3(true, Struct_1(-14158i, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-620f, -671f), _wgslsmith_f_op_f32(1375f * var_2), 1541f, func_2(var_0.b.a, Struct_3(true, global1.b, false, global1.d)).c), vec4<f32>(var_0.b.b.x, -492f, _wgslsmith_f_op_f32(var_0.b.b.x - global2.c), _wgslsmith_f_op_f32(673f - var_2))), _wgslsmith_f_op_f32(-1254f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), true, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-reverseBits(-vec4<i32>(global2.a, 30026i, -94921i, 2147483647i))), countOneBits(1u), ~vec3<i32>(i32(-1i) * -2147483647i, global1.b.a, _wgslsmith_add_i32(abs(global1.b.a), ~global1.b.a)), _wgslsmith_f_op_f32(func_1(u_input.a.x, var_0.b.a)));
}


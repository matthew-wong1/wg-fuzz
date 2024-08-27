struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<f32>(-420f, 2502f), vec4<f32>(-172f, -2565f, -1734f, -1000f), vec4<i32>(18842i, 2147483647i, -35312i, 1i)), Struct_1(vec2<f32>(392f, -664f), vec4<f32>(-963f, 185f, -1000f, 1826f), vec4<i32>(61780i, -25563i, 1i, i32(-2147483648))), Struct_1(vec2<f32>(481f, -343f), vec4<f32>(185f, -385f, 724f, -109f), vec4<i32>(-6083i, 1904i, -15112i, 0i)));

var<private> global1: array<vec4<u32>, 5>;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-1000f, -1000f), vec4<f32>(1000f, -849f, -1014f, 231f), vec4<i32>(2147483647i, 1i, -1i, -56137i));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    let var_0 = min(arg_0.x, arg_0.x);
    global1 = array<vec4<u32>, 5>();
    global1 = array<vec4<u32>, 5>();
    let var_1 = select(global2.c.zz, global2.c.wx, false);
    global0 = array<Struct_1, 3>();
    return ~(_wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(arg_0.x, arg_0.x)), _wgslsmith_sub_vec2_u32(arg_0, min(vec2<u32>(66596u, var_0), arg_0))) | arg_0.x);
}

fn func_3() -> f32 {
    global2 = Struct_1(global2.a, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_div_f32(global2.b.x, 346f)), global2.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.a.x + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1133f))))), global2.c);
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.b.x)));
    let var_1 = ~vec4<u32>(1u, 1u, 1u, ~firstTrailingBit(1u));
    var var_2 = global0[_wgslsmith_index_u32(var_1.x, 3u)];
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.b.x, 305f, false))))), global2.a.x));
    return -411f;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> vec4<i32> {
    return countOneBits(arg_1.c);
}

fn func_1() -> Struct_1 {
    let var_0 = false;
    let var_1 = _wgslsmith_div_u32(~_wgslsmith_sub_u32(~1u, 1u), _wgslsmith_add_u32(func_2(vec2<u32>(countOneBits(1u), _wgslsmith_div_u32(14765u, 1u))), ~(~(~0u))));
    var var_2 = var_1;
    global0 = array<Struct_1, 3>();
    var var_3 = var_0;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(-1040f)), global2.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.b * vec4<f32>(-189f, 675f, -245f, 923f)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1599f)) + _wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_f32(select(1498f, _wgslsmith_f_op_f32(global2.b.x * 132f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1434f - 600f)), _wgslsmith_f_op_f32(-global2.a.x))), func_4(_wgslsmith_f_op_vec2_f32(-global2.a), global0[_wgslsmith_index_u32(var_1, 3u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1157f, _wgslsmith_f_op_f32(func_3()), true))), var_1 >> (min(~var_1, var_1) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 5>();
    let var_0 = max(global2.c.xxw, global2.c.xww);
    let var_1 = 60121u;
    let var_2 = func_1();
    global2 = Struct_1(var_2.b.yw, _wgslsmith_f_op_vec4_f32(var_2.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.a.x, global2.a.x, 1615f, var_2.a.x), vec4<f32>(1136f, global2.a.x, 1000f, 589f)))) + _wgslsmith_f_op_vec4_f32(global2.b - vec4<f32>(728f, -251f, var_2.b.x, 1309f)))), -abs(vec4<i32>(26663i, 2147483647i, _wgslsmith_mult_i32(0i, var_0.x), global2.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-73890i);
}


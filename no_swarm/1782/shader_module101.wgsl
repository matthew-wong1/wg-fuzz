struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<i32>(29757i, 14700i, i32(-2147483648), 6479i));

var<private> global1: Struct_2;

var<private> global2: Struct_3 = Struct_3(vec4<i32>(2147483647i, -1i, i32(-2147483648), -1i));

var<private> global3: array<u32, 19>;

var<private> global4: i32 = -34254i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_4(Struct_3(global2.a));
    let var_1 = !arg_1.a.a.x == (select(!global1.b.x, true & global1.c.a.x, arg_1.b.x & false) & all(select(!vec4<bool>(true, arg_1.a.a.x, arg_1.b.x, true), select(vec4<bool>(true, true, true, arg_1.a.a.x), arg_1.a.a, global1.c.a.x), true)));
    var var_2 = select(vec3<bool>(-533f >= arg_1.d.x, false, true), arg_1.a.a.zww, true);
    global1 = arg_1;
    global1 = arg_1;
    return _wgslsmith_f_op_f32(floor(global1.d.x));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_1 {
    global3 = array<u32, 19>();
    global0 = Struct_3(-abs(global0.a << (min(vec4<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1.x, 19u)], 19u)], 19u)], 0u, u_input.c.x), u_input.a) % vec4<u32>(32u))));
    var var_0 = select(select(arg_2.c.a.zz, select(global1.b, vec2<bool>(true & arg_2.c.a.x, !global1.a.a.x), true), arg_2.a.a.xw), vec2<bool>(true, global1.c.a.x), false);
    global4 = 0i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(1u, arg_2)) * _wgslsmith_f_op_f32(-arg_0));
    return Struct_1(vec4<bool>(select(-2147483647i < global2.a.x, true, var_0.x), true && global1.a.a.x, select(arg_2.b.x, !(-243f <= arg_2.d.x), all(!global1.b)), var_0.x));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-88962i, _wgslsmith_mult_i32(40248i, global0.a.x), -2147483647i, 1i), _wgslsmith_mod_vec4_i32(global0.a, reverseBits(global2.a))), global0.a | vec4<i32>(-1i, firstTrailingBit(-2116i), -2147483647i, global0.a.x)), vec4<i32>(-1i, countOneBits(2147483647i), -(~(~1i)), min(2147483647i, 19699i)));
    let var_1 = Struct_5(!vec4<bool>(true, global1.c.a.x, all(global1.c.a.ww), !global1.c.a.x), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.d.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.d.x, 874f)) - 422f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-2483f))))), 1247f, _wgslsmith_f_op_f32(383f * _wgslsmith_f_op_f32(floor(722f)))));
    let var_2 = global1.c.a.x;
    let var_3 = !var_1.a.yx;
    let var_4 = u_input.b;
    return func_2(_wgslsmith_div_f32(1781f, -711f), ~(~vec2<u32>(50776u, 28464u)), Struct_2(Struct_1(select(!vec4<bool>(false, false, true, var_3.x), select(global1.c.a, global1.a.a, true), var_3.x && var_1.a.x)), global1.b, global1.c, global1.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global2.a.x;
    var var_1 = global2.a.zz;
    let var_2 = func_1();
    var var_3 = Struct_2(Struct_1(func_2(global1.d.x, reverseBits(select(u_input.a.yy, u_input.a.yw, var_2.a.zx)), Struct_2(var_2, vec2<bool>(true, true), Struct_1(global1.a.a), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.d.x, global1.d.x))))).a), func_1().a.yz, Struct_1(global1.c.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.d - _wgslsmith_f_op_vec2_f32(min(global1.d, global1.d))), vec2<f32>(_wgslsmith_f_op_f32(global1.d.x - -1396f), -1024f))));
    global4 = 2147483647i;
    global3 = array<u32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global1.d.x, _wgslsmith_f_op_f32(-global1.d.x)), vec3<i32>(-48179i, global2.a.x, -(var_0 & global2.a.x)), _wgslsmith_f_op_f32(step(1746f, var_3.d.x)), 1000f);
}


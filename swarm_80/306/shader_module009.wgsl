struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 25>;

var<private> global2: vec3<u32> = vec3<u32>(1u, 0u, 0u);

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global4: i32 = 47286i;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-arg_2.x);
    return !(!(!select(select(vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(true, false, global3.x, global3.x), global3.x), vec4<bool>(false, global3.x, true, global3.x), !vec4<bool>(true, true, true, global3.x))));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_0.yy + arg_0.xx);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.x, 324f), _wgslsmith_f_op_vec2_f32(-arg_0.yz)))), arg_0.zz)));
    let var_2 = any(!select(vec4<bool>(true, false, select(arg_1, arg_1, false), arg_1), func_3(global0.e, _wgslsmith_mult_i32(global0.a.b, u_input.b.x), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-137f, -2359f), vec2<f32>(var_1.x, -133f)))), select(vec4<bool>(true, false, arg_1, true), func_3(Struct_2(vec4<u32>(global0.c.x, global2.x, 1u, global2.x), global0.e.b, 1i), -34256i, arg_0.zx), true)));
    var var_3 = -reverseBits(-_wgslsmith_mod_vec4_i32(~vec4<i32>(arg_2.x, u_input.c.x, global0.a.b, arg_2.x), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.a.b, u_input.c.x, -1i, 1i), vec4<i32>(arg_2.x, global0.e.b.b, -11648i, 1i))));
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_0.x)))), 335f)));
    return 740u;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = select(u_input.c ^ u_input.b, firstLeadingBit(min(vec2<i32>(1954i, 2147483647i), _wgslsmith_div_vec2_i32(u_input.b << (vec2<u32>(1u, 24053u) % vec2<u32>(32u)), u_input.c))), select(vec2<bool>(!global3.x, !global3.x), vec2<bool>(select(-1442f >= arg_1.x, true, false), any(!global3.yx)), (countOneBits(-18145i) == abs(u_input.b.x)) & !(true & global3.x)));
    var var_1 = 1i;
    let var_2 = Struct_4(any(func_3(global0.e, 0i, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1396f, -692f)))).yw));
    var var_3 = var_2;
    global4 = -13980i;
    return Struct_1(arg_0, ~_wgslsmith_div_i32(firstTrailingBit(-10590i), -1i));
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_3, 25>();
    var var_0 = func_4(global0.d & _wgslsmith_add_i32(0i, 0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.b, global0.b, 324f), vec3<f32>(global0.b, -499f, 474f))), vec3<f32>(global0.b, 1802f, 269f))))), _wgslsmith_mult_u32(abs(abs(~global2.x)), _wgslsmith_div_u32(~func_2(vec3<f32>(global0.b, global0.b, 1410f), global3.x, vec2<i32>(u_input.c.x, 1i)), _wgslsmith_mod_u32(global2.x, _wgslsmith_mult_u32(1u, global2.x)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2.yx, ~firstTrailingBit(firstTrailingBit(vec2<u32>(1u, global0.c.x)))), 25u)]);
    let var_1 = global0.e;
    let var_2 = _wgslsmith_mult_vec3_i32(select(-(~vec3<i32>(var_0.b, var_1.b.b, 0i)), vec3<i32>(select(var_0.b, global0.a.a, global3.x) << (min(var_1.a.x, var_1.a.x) % 32u), reverseBits(u_input.b.x), -1i), select(!global3.zyw, global3.zyy, vec3<bool>(global3.x, global3.x, func_3(Struct_2(var_1.a, Struct_1(0i, -2147483647i), 42989i), -2147483647i, vec2<f32>(global0.b, global0.b)).x))), vec3<i32>(-1i, 59580i, -(~(-3917i))) | vec3<i32>(36486i, 1i, var_1.c));
    var var_3 = Struct_4(any(select(global3.zz, global3.ww, select(vec2<bool>(true, false), global3.xw, vec2<bool>(global3.x, true)))));
    return Struct_1(-33363i, countOneBits(global0.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-853f, global0.b, -1793f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(172f * global0.b)))));
    var var_1 = global0.e;
    global2 = ~(~select(var_1.a.wyw, ~reverseBits(vec3<u32>(1u, 4294967295u, 50576u)), global3.yyw));
    var var_2 = Struct_3(func_1(), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, -230f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(588f, -419f) * _wgslsmith_f_op_f32(f32(-1f) * -700f))))), vec2<u32>(var_1.a.x, ~50695u), _wgslsmith_mod_i32(var_1.b.b, 7488i), Struct_2(vec4<u32>(1u, max(_wgslsmith_mult_u32(global2.x, global2.x), var_1.a.x), 0u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(var_1.a, global0.e.a), var_1.a)), Struct_1(i32(-1i) * -9202i, -abs(0i)), u_input.a));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global0.b, 215f, -1000f))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global0.b, -135f, global0.b, -2209f), vec4<f32>(var_2.b, global0.b, var_0.x, -2113f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, global0.b, -580f, 863f), vec4<f32>(1041f, var_2.b, 881f, -379f))))), any(global3.yw))), vec4<f32>(-446f, global0.b, -1527f, var_0.x), true)));
    global0 = global1[_wgslsmith_index_u32(~1u, 25u)];
    let var_4 = vec3<bool>(false, global3.x, (global3.x != true) || select(var_2.e.a.x <= var_1.a.x, true != all(global3.wy), global3.x));
    let x = u_input.a;
    s_output = StorageBuffer(-2300f, global0.e.a >> (~((var_2.e.a | var_2.e.a) ^ var_2.e.a) % vec4<u32>(32u)), vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(~vec4<i32>(-20162i, 58189i, -1i, -1i), ~vec4<i32>(-1i, -1i, var_1.c, 34936i)));
}


struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: f32,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(48835u, 4294967295u, 97321u, 4294967295u), vec4<u32>(4294967295u, 45587u, 80704u, 1u), vec4<u32>(88042u, 1u, 0u, 0u), vec4<u32>(0u, 3228u, 4294967295u, 13181u), vec4<u32>(43397u, 1u, 1u, 71235u), vec4<u32>(4294967295u, 445u, 62268u, 39297u), vec4<u32>(46276u, 0u, 4294967295u, 16916u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, 22411u, 82690u), vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 14195u, 0u), vec4<u32>(1u, 25532u, 0u, 13975u), vec4<u32>(189u, 41357u, 1u, 10792u), vec4<u32>(4294967295u, 4294967295u, 32394u, 129592u), vec4<u32>(1u, 3050u, 4294967295u, 42194u), vec4<u32>(44114u, 0u, 30016u, 4391u), vec4<u32>(1u, 1u, 4961u, 73193u), vec4<u32>(20033u, 4294967295u, 87058u, 4294967295u));

var<private> global1: Struct_4;

var<private> global2: Struct_3;

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> vec3<f32> {
    var var_0 = global1.a;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -230f))), _wgslsmith_f_op_f32(step(-107f, -696f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(882f, 191f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1116f)))));
    global2 = global1.a;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(347f, var_1.x, var_1.x) - vec3<f32>(-328f, var_1.x, var_1.x)))))));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(386f * 1000f)) - 342f), -132f)));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -385f)), vec3<f32>(var_0.x, var_0.x, var_0.x), all(arg_0.a.a))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -803f, -1145f), _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(u_input.b, 22224u, u_input.b, 97211u), arg_1))))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(789f, _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-758f, var_0.x, var_0.x) + vec3<f32>(var_0.x, 1646f, -514f))))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1340f) - vec3<f32>(var_0.x, -168f, var_0.x)))))));
    return arg_0;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_5) -> u32 {
    var var_0 = !(!select(vec2<bool>(select(false, arg_2.a.b, true), true), select(select(global1.a.c.a, vec2<bool>(global2.b.x, false), arg_1.b.x), global1.a.a.a.yx, true), vec2<bool>(false, true)));
    global1 = arg_2.b;
    global1 = Struct_4(func_2(global1.a, !any(arg_2.a.a.b) && true, all(func_2(global1.a, any(vec4<bool>(global2.c.a.x, true, true, arg_2.a.b)), global2.a.b == arg_2.a.a.a.b).a.a)), global2.a.a.x);
    let var_1 = func_2(global1.a, all(global1.a.a.a), false).a;
    global3 = !vec3<bool>(true, all(!select(vec4<bool>(true, false, global3.x, global2.c.a.x), vec4<bool>(false, arg_2.d, arg_2.a.a.c.a.x, false), arg_1.b)), false);
    return abs(1u);
}

fn func_5(arg_0: vec4<u32>) -> Struct_4 {
    var var_0 = Struct_2(select(func_2(Struct_3(func_2(Struct_3(Struct_1(global1.a.a.a, -2147483647i), global1.a.b, Struct_2(global1.a.c.a)), global3.x, global1.b).a, !vec4<bool>(true, global3.x, true, global2.c.a.x), global1.a.c), _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(u_input.b, u_input.a.x, arg_0.x, 4294967295u)) < arg_0.x, !global3.x).c.a, !vec2<bool>(all(vec3<bool>(global3.x, global2.b.x, global2.c.a.x)), false), false));
    global1 = Struct_4(Struct_3(func_2(Struct_3(global2.a, vec4<bool>(global2.a.a.x, true, false, false), func_2(global1.a, var_0.a.x, global2.c.a.x).c), true, all(global2.b.yzx)).a, vec4<bool>(global1.a.c.a.x, false, select(false, func_2(Struct_3(global1.a.a, global2.b, Struct_2(vec2<bool>(false, false))), global2.a.a.x, false).c.a.x, u_input.b < 23742u), all(vec2<bool>(true, global1.a.c.a.x))), func_2(Struct_3(func_2(Struct_3(Struct_1(global2.b.wxx, -1i), global1.a.b, Struct_2(vec2<bool>(false, global2.a.a.x))), true, true).a, select(vec4<bool>(var_0.a.x, false, false, var_0.a.x), global1.a.b, true), Struct_2(global2.c.a)), true, true).c), global2.b.x);
    var var_1 = Struct_2(vec2<bool>(!(true != !global1.a.b.x), true));
    var var_2 = Struct_4(Struct_3(global1.a.a, !(!global1.a.b), func_2(global1.a, !(var_0.a.x || var_1.a.x), global3.x).c), global3.x);
    var var_3 = func_2(Struct_3(var_2.a.a, func_2(global1.a, func_2(func_2(var_2.a, global3.x, true), u_input.a.x > 20560u, u_input.b <= arg_0.x).c.a.x, var_1.a.x).b, func_2(Struct_3(global1.a.a, vec4<bool>(var_0.a.x, var_2.b, global3.x, var_0.a.x), Struct_2(vec2<bool>(false, var_1.a.x))), true, !all(global2.b.wwy)).c), var_2.a.c.a.x, true).a;
    return Struct_4(var_2.a, global2.c.a.x);
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = global1.a.b.x;
    global1 = func_5(vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, 1u) << ((u_input.a.x ^ _wgslsmith_div_u32(u_input.a.x, u_input.b)) % 32u), func_4(vec4<i32>(25944i, global1.a.a.b, 1i, abs(global2.a.b)), func_2(global1.a, arg_0, false), Struct_5(Struct_4(Struct_3(global1.a.a, global1.a.b, global2.c), global1.b), Struct_4(global1.a, false), -1701f, !global3.x, _wgslsmith_div_vec4_i32(vec4<i32>(25516i, u_input.c, -2147483647i, -2147483647i), vec4<i32>(global1.a.a.b, global1.a.a.b, -13709i, -81434i)))), 4294967295u, _wgslsmith_sub_u32(u_input.b, u_input.a.x << (u_input.b % 32u)) << (u_input.b % 32u)));
    var var_1 = Struct_2(vec2<bool>(func_5(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, u_input.a.x), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(33087u, u_input.a.x), 18u)])).a.a.a.x, any(!(!global1.a.a.a))));
    var var_2 = func_5(~(~abs(vec4<u32>(u_input.b, u_input.a.x, 34118u, 36261u)))).a;
    let var_3 = var_2.c;
    return all(vec3<bool>(all(global2.b), true, all(!(!var_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 18>();
    var var_0 = global2.b;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-247f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1849f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-449f, 216f))))), 957f);
    global0 = array<vec4<u32>, 18>();
    let var_2 = vec3<bool>(any(select(global1.a.b, global2.b, global2.b.x)), false, true && func_1(any(select(global2.b, global2.b, true))));
    var var_3 = global2.a.a.x;
    var var_4 = var_1.x;
    let var_5 = Struct_2(!func_5(vec4<u32>(u_input.b | u_input.b, u_input.b, 2287u, ~u_input.b)).a.b.ww);
    var var_6 = _wgslsmith_f_op_vec3_f32(vec3<f32>(780f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1300f + var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))), var_1.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -861f) * vec3<f32>(735f, var_1.x, var_1.x)), vec3<f32>(var_1.x, var_1.x, 1000f), false || global2.b.x)), vec3<f32>(_wgslsmith_f_op_f32(step(-1478f, 1275f)), _wgslsmith_f_op_f32(-var_1.x), 430f))));
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_add_u32(58429u, max(u_input.b, u_input.a.x)) >> (~_wgslsmith_mod_u32(u_input.b, 8453u) % 32u)) ^ 4294967295u, _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, global1.a.a.b, -16734i), countOneBits(vec4<i32>(-2147483647i, 30749i, -2147483647i, u_input.c))), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(global1.a.a.b, global1.a.a.b, global2.a.b, u_input.c), vec4<i32>(2147483647i, 0i, global2.a.b, global2.a.b)))), vec4<i32>(-67096i, ~func_2(Struct_3(Struct_1(vec3<bool>(global2.a.a.x, true, true), u_input.c), vec4<bool>(var_5.a.x, global1.b, global2.a.a.x, var_0.x), Struct_2(global2.a.a.yz)), var_5.a.x, true).a.b, -1i, _wgslsmith_add_i32(global2.a.b, abs(-61114i)))));
}


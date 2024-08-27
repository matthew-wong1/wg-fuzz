struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1116f;

var<private> global1: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global2: array<bool, 26> = array<bool, 26>(true, false, true, false, false, false, true, false, true, true, true, true, true, true, false, true, false, false, false, true, false, false, false, true, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = vec3<u32>(4294967295u, ~1u, min(1u, 1u));
    return 0i;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5) -> Struct_4 {
    let var_0 = all(vec2<bool>(all(vec4<bool>(true, select(true, false, global2[_wgslsmith_index_u32(1u, 26u)]), arg_1.b.c.b.x == arg_1.a.e.x, any(vec2<bool>(true, global2[_wgslsmith_index_u32(7768u, 26u)])))), !(!(arg_1.a.e.x && arg_0.e.x))));
    var var_1 = _wgslsmith_f_op_f32(abs(arg_1.d.a.x));
    var var_2 = arg_1.b.c.b.yy;
    let var_3 = -_wgslsmith_mult_vec4_i32(-arg_1.b.b, ~(-_wgslsmith_div_vec4_i32(vec4<i32>(12175i, -1i, u_input.a, 2147483647i), vec4<i32>(0i, arg_0.c.x, arg_0.d, 55865i))));
    var var_4 = ~7857u;
    return Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_1.d.a, _wgslsmith_f_op_vec4_f32(-arg_1.d.a)))));
}

fn func_1() -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1365f, -614f))))))));
    var var_0 = -1030f;
    var var_1 = func_3(Struct_3(all(!(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(39498u, 26u)]))), ~vec2<u32>(1u, 1u), ~vec2<i32>(-2147483647i, ~(-2147483647i)), func_2(!(true | global2[_wgslsmith_index_u32(376u, 26u)])), vec3<bool>(true, true, true)), Struct_5(Struct_3(true, vec2<u32>(34450u, 4294967295u) << (firstTrailingBit(vec2<u32>(43297u, 35357u)) % vec2<u32>(32u)), max(abs(vec2<i32>(0i, u_input.a)), vec2<i32>(u_input.a, u_input.a)), firstTrailingBit(u_input.a) & u_input.a, !(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 26u)], true, global2[_wgslsmith_index_u32(0u, 26u)]))), Struct_2(1u, vec4<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), -u_input.a), Struct_1(min(1u, 0u), vec4<bool>(true, global2[_wgslsmith_index_u32(32287u, 26u)], true, global2[_wgslsmith_index_u32(0u, 26u)])), vec2<f32>(-1000f, -1449f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-667f, -1353f, -583f))))), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(ceil(737f)), _wgslsmith_div_f32(-537f, -337f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1165f + 595f)))));
    let var_2 = Struct_1(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 6935u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(50312u, 24848u, 4243u), min(vec3<u32>(24444u, 53517u, 81809u), vec3<u32>(4294967295u, 85269u, 4294967295u))))), !select(select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(71881u, 26u)]), select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(13502u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)]), vec4<bool>(global2[_wgslsmith_index_u32(1u, 26u)], false, false, false), vec4<bool>(false, global2[_wgslsmith_index_u32(22092u, 26u)], true, true)), select(vec4<bool>(global2[_wgslsmith_index_u32(24793u, 26u)], true, global2[_wgslsmith_index_u32(3440u, 26u)], false), vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 26u)], false, global2[_wgslsmith_index_u32(68025u, 26u)]), global2[_wgslsmith_index_u32(1645u, 26u)])), select(!vec4<bool>(global2[_wgslsmith_index_u32(44205u, 26u)], global2[_wgslsmith_index_u32(22134u, 26u)], false, global2[_wgslsmith_index_u32(4294967295u, 26u)]), vec4<bool>(global2[_wgslsmith_index_u32(33042u, 26u)], true, global2[_wgslsmith_index_u32(63957u, 26u)], true), u_input.a != -4577i), false));
    let var_3 = !vec4<bool>(true, !(true & var_2.b.x), !any(var_2.b), var_2.b.x);
    return !var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1u, !func_1());
    let var_1 = vec2<bool>(false, func_1().x);
    var var_2 = 0u;
    let var_3 = !(!var_0.b.xz);
    let var_4 = Struct_5(Struct_3(all(vec2<bool>(1i < u_input.a, !var_1.x)), ~(~(~vec2<u32>(var_0.a, 4294967295u))), countOneBits(max(abs(vec2<i32>(u_input.a, 17388i)), ~vec2<i32>(u_input.a, u_input.a))), abs(-1i), func_1().xww), Struct_2(var_0.a, vec4<i32>(reverseBits(0i), i32(-1i) * -44543i, u_input.a, func_2(true)), Struct_1(23968u, var_0.b), vec2<f32>(-187f, _wgslsmith_f_op_f32(1f - -674f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(287f - -930f), -1807f, any(vec3<bool>(var_0.b.x, false, false)))), _wgslsmith_f_op_f32(min(-812f, 388f)), _wgslsmith_f_op_f32(step(-117f, 1f)))), func_3(Struct_3(var_0.b.x, firstTrailingBit(select(vec2<u32>(27021u, var_0.a), vec2<u32>(1u, 1u), false)), vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.a, -2147483647i), ~(u_input.a ^ u_input.a), !vec3<bool>(var_3.x, var_0.b.x, var_0.b.x)), Struct_5(Struct_3(true, _wgslsmith_mult_vec2_u32(vec2<u32>(58362u, var_0.a), vec2<u32>(14330u, 26907u)), vec2<i32>(-1i, u_input.a), ~u_input.a, var_0.b.xzx), Struct_2(5305u, vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), Struct_1(45956u, var_0.b), _wgslsmith_div_vec2_f32(vec2<f32>(1902f, 1000f), vec2<f32>(-113f, -2106f))), vec3<f32>(_wgslsmith_div_f32(2032f, -1068f), _wgslsmith_f_op_f32(f32(-1f) * -142f), _wgslsmith_f_op_f32(ceil(1000f))), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1024f, 1083f, -1000f, 170f))))));
    var var_5 = Struct_3(any(var_4.b.c.b.xyy), countOneBits(~_wgslsmith_div_vec2_u32(vec2<u32>(62143u, 1u), var_4.a.b)), reverseBits(vec2<i32>(-1i, u_input.a | _wgslsmith_div_i32(u_input.a, 1i))), var_4.a.d, select(select(!(!var_0.b.xyy), vec3<bool>(var_4.d.a.x > -2291f, true, any(vec2<bool>(false, false))), vec3<bool>(any(var_0.b.xxz), var_4.d.a.x >= var_4.c.x, !var_1.x)), vec3<bool>(true, var_4.c.x <= _wgslsmith_f_op_f32(select(564f, -233f, var_0.b.x)), !all(vec4<bool>(true, true, var_1.x, var_3.x))), !any(vec2<bool>(var_3.x, global2[_wgslsmith_index_u32(var_4.a.b.x, 26u)]))));
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_4.b.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(999f - var_4.c.x)))));
    var var_6 = vec3<u32>(select(_wgslsmith_div_u32(max(_wgslsmith_mult_u32(var_0.a, var_5.b.x), ~4294967295u), var_5.b.x), var_5.b.x, var_0.b.x), var_4.b.a, 4294967295u & (1u << (select(var_4.a.b.x, var_4.b.c.a, false) % 32u)));
    let var_7 = Struct_5(Struct_3(any(!select(var_4.b.c.b.xzy, vec3<bool>(var_1.x, var_0.b.x, false), true)), vec2<u32>(var_4.b.c.a >> (85391u % 32u), ~abs(19641u)), abs(_wgslsmith_add_vec2_i32(~vec2<i32>(-2147483647i, -37956i), vec2<i32>(var_5.d, -10373i))), 0i, var_4.b.c.b.wwx), Struct_2(var_4.b.c.a, var_4.b.b, var_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.c.x, _wgslsmith_f_op_f32(-578f + -2474f)))), _wgslsmith_f_op_vec3_f32(-var_4.c), Struct_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_4.d.a - _wgslsmith_div_vec4_f32(vec4<f32>(var_4.d.a.x, -275f, 1655f, var_4.c.x), vec4<f32>(1000f, -1000f, 590f, 949f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.c.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.d.a.x - var_7.c.x) - _wgslsmith_f_op_f32(ceil(1236f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_4.b.d.x, var_4.d.a.x)))))), (firstLeadingBit(54525u) ^ ~firstLeadingBit(var_4.b.a)) << (var_4.b.a % 32u));
}


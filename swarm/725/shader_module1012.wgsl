struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(2230u, 4294967295u, 14928u, 1u, 1u, 1u, 78426u, 1u, 40302u, 1u, 4294967295u, 4294967295u, 59291u, 61898u, 23916u, 11768u, 5078u, 1u, 0u, 4294967295u, 1u, 4294967295u, 81450u, 122202u, 1u, 31979u, 68538u, 45u, 53903u);

var<private> global1: array<vec2<i32>, 31>;

var<private> global2: array<f32, 32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: vec2<f32>) -> i32 {
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    global1 = array<vec2<i32>, 31>();
    global1 = array<vec2<i32>, 31>();
    global0 = array<u32, 29>();
    return u_input.a.x;
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    var var_0 = reverseBits(vec3<i32>(1i, -func_3(Struct_2(vec2<bool>(false, true), vec3<f32>(617f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65046u, 29u)], 32u)], -642f), Struct_1(vec4<i32>(1i, arg_0.x, -2034i, arg_0.x), true)), 4294967295u, false, vec2<f32>(-635f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 32u)])), i32(-1i) * -arg_0.x)) & select(firstLeadingBit(firstLeadingBit(countOneBits(arg_0.wyz))), abs(arg_0.wyz), select(vec3<bool>(true, true, all(vec2<bool>(false, false))), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), true));
    return Struct_3(Struct_1(firstTrailingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(arg_0, arg_0), vec4<i32>(arg_0.x, arg_0.x, var_0.x, arg_0.x))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 29u)], 29u)], 29u)], 1u), 32u)] * _wgslsmith_f_op_f32(floor(1000f))) <= -452f));
}

fn func_4(arg_0: Struct_3) -> vec2<i32> {
    let var_0 = Struct_2(vec2<bool>(any(select(!vec4<bool>(arg_0.a.b, arg_0.a.b, arg_0.a.b, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, arg_0.a.b, false, false), arg_0.a.b), !vec4<bool>(false, arg_0.a.b, true, arg_0.a.b))), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global2[_wgslsmith_index_u32(u_input.b.x, 32u)], -395f) * vec3<f32>(924f, global2[_wgslsmith_index_u32(u_input.b.x, 32u)], -229f)))))), arg_0.a);
    let var_1 = Struct_1(vec4<i32>(_wgslsmith_sub_i32(abs(~(-6614i)), _wgslsmith_add_i32(-1i, _wgslsmith_div_i32(u_input.a.x, 13801i))), ~0i, countOneBits(-65307i), countOneBits(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, arg_0.a.a.x, 62120i), vec3<i32>(52719i, u_input.a.x, -2147483647i)))), arg_0.a.b);
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-910f, -1007f, -260f, var_0.b.x) - vec4<f32>(global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 32u)], -555f, var_0.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(582f, var_0.b.x, -1274f, var_0.b.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, -1112f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.x, var_0.b.x, 668f, var_0.b.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1165f, -187f, 725f, global2[_wgslsmith_index_u32(665u, 32u)]) - vec4<f32>(global2[_wgslsmith_index_u32(16883u, 32u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 32u)], global2[_wgslsmith_index_u32(0u, 32u)], 571f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, -1139f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39348u, 29u)], 29u)], 32u)], global2[_wgslsmith_index_u32(1u, 32u)]), vec4<f32>(global2[_wgslsmith_index_u32(27858u, 32u)], -250f, var_0.b.x, 1137f), true))), select(select(vec4<bool>(false, var_1.b, false, var_0.a.x), vec4<bool>(true, var_0.a.x, false, var_1.b), vec4<bool>(var_1.b, var_0.c.b, arg_0.a.b, var_0.a.x)), !vec4<bool>(false, false, false, arg_0.a.b), true)))))));
    var var_3 = u_input.b;
    let var_4 = 4294967295u;
    return ~firstTrailingBit(arg_0.a.a.yw);
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_mult_vec2_i32(func_4(func_2(firstTrailingBit(vec4<i32>(3558i, u_input.c.x, -1i, u_input.a.x)) & vec4<i32>(-71276i, 0i, 29746i, -42051i))), -(~(vec2<i32>(u_input.c.x, 0i) | vec2<i32>(u_input.a.x, u_input.c.x))) << (reverseBits(vec2<u32>(abs(global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), u_input.b.x)) % vec2<u32>(32u)));
    let var_1 = Struct_3(Struct_1(-(~(~vec4<i32>(2147483647i, -6697i, var_0.x, var_0.x))), true));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(96728u, 32u)] + _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(0u, 29u)] << (45931u % 32u)), 32u)]))), 692f, global2[_wgslsmith_index_u32(23775u, 32u)]);
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~4294967295u, 32u)] - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32088u, 29u)], 32u)] * var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -358f) - _wgslsmith_f_op_f32(round(1364f))), global2[_wgslsmith_index_u32(9015u, 32u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2077f, var_2.x, var_2.x))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(584f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 29u)], 29u)], 29u)], 32u)], 239f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 32u)], global2[_wgslsmith_index_u32(24972u, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)]))), !vec3<bool>(var_1.a.b, true, var_1.a.b)))));
    var var_3 = abs(~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(func_2(var_1.a.a).a.a.yz, _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, var_1.a.a.x), var_1.a.a.zx)), var_1.a.a.x));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = array<f32, 32>();
    var var_1 = any(select(vec2<bool>(true, var_0.a.b && var_0.a.b), vec2<bool>(true, select(!var_0.a.b, true, var_0.a.b)), select(!vec2<bool>(var_0.a.b, true), vec2<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 32u)] != global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 32u)], func_2(vec4<i32>(u_input.c.x, var_0.a.a.x, u_input.c.x, var_0.a.a.x)).a.b), true & (143728u > global0[_wgslsmith_index_u32(u_input.b.x, 29u)]))));
    var var_2 = var_0.a;
    let var_3 = Struct_1(var_2.a, all(!vec4<bool>(var_0.a.b, true, true, !var_0.a.b)));
    var var_4 = _wgslsmith_dot_vec3_i32(abs(firstTrailingBit(-vec3<i32>(-5875i, var_3.a.x, 18558i) & vec3<i32>(-2147483647i, u_input.c.x, var_2.a.x))), max(~func_1().a.a.zzw, select(countOneBits(select(var_0.a.a.xwx, vec3<i32>(-55176i, var_0.a.a.x, var_3.a.x), var_2.b)), var_3.a.zzw, vec3<bool>(true, false, func_1().a.b))));
    let var_5 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 4294967295u, 48423u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 19672u, global0[_wgslsmith_index_u32(19806u, 29u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 29u)], ~min(global0[_wgslsmith_index_u32(9829u, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)]))), min(~_wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 4294967295u, global0[_wgslsmith_index_u32(22719u, 29u)]), vec3<u32>(global0[_wgslsmith_index_u32(100905u, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 29u)], 29u)], u_input.b.x)), ~firstLeadingBit(vec3<u32>(u_input.b.x, 1u, 40567u))) | ~_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 37198u, 1u), ~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(20705u, 29u)])));
}


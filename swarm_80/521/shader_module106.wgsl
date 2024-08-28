struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<u32>, 19>;

var<private> global2: bool;

var<private> global3: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_1(1256u), vec4<i32>(2147483647i, -63585i, -7488i, -18986i), -44630i), Struct_3(Struct_1(82335u), vec4<i32>(2147483647i, 22975i, 1063i, i32(-2147483648)), -1i), Struct_3(Struct_1(27571u), vec4<i32>(2147483647i, 38607i, 1946i, 68767i), 22839i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>, arg_3: u32) -> Struct_1 {
    global1 = array<vec3<u32>, 19>();
    global3 = array<Struct_3, 3>();
    global3 = array<Struct_3, 3>();
    global3 = array<Struct_3, 3>();
    global3 = array<Struct_3, 3>();
    return global0.d;
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> u32 {
    let var_0 = select(countOneBits(abs(_wgslsmith_add_vec3_i32(vec3<i32>(0i, -9849i, arg_1.a.a.x), vec3<i32>(-2147483647i, global0.a.x, global0.a.x)))), arg_1.a.a.yxx, select(select(vec3<bool>(arg_1.a.b.x && true, -2147483647i >= global0.a.x, true), select(!vec3<bool>(true, global0.b.x, arg_1.a.b.x), vec3<bool>(true, false, global0.c.x), vec3<bool>(global0.b.x, true, true)), arg_1.a.b.x || global0.c.x), select(vec3<bool>(all(vec3<bool>(arg_1.a.c.x, arg_1.a.b.x, global0.b.x)), all(vec3<bool>(true, global0.b.x, arg_1.a.b.x)), all(vec4<bool>(true, false, global0.b.x, true))), select(select(vec3<bool>(true, false, arg_1.a.c.x), vec3<bool>(false, arg_1.a.c.x, false), false), select(vec3<bool>(true, arg_1.a.c.x, arg_1.a.b.x), vec3<bool>(false, arg_1.a.b.x, arg_1.a.b.x), global0.b.x), global0.b.x), select(any(vec3<bool>(true, global0.c.x, true)), global0.c.x & global0.b.x, true | arg_1.a.b.x)), select(vec3<bool>(0i <= global0.a.x, arg_1.a.c.x, !global0.c.x), !vec3<bool>(true, global0.b.x, global0.c.x), !(!vec3<bool>(true, global0.c.x, true)))));
    let var_1 = firstTrailingBit(var_0.zx);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(-arg_0), arg_1.a.b.x)), -1000f)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1378f, 722f)))));
    var var_3 = 8757i;
    let var_4 = _wgslsmith_div_vec3_i32(vec3<i32>(1i, firstLeadingBit(-var_1.x), ~(~(-11417i))), -_wgslsmith_mult_vec3_i32(-_wgslsmith_add_vec3_i32(global0.a.wxx, vec3<i32>(global0.a.x, global0.a.x, -17286i)), abs(vec3<i32>(var_1.x, -3033i, 0i))));
    return ~69416u;
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1025f - 1528f)))), _wgslsmith_f_op_f32(-556f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1912f * -544f), -681f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2743f - 1645f) - _wgslsmith_f_op_f32(step(1371f, 723f))) + 1074f)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(121f, 1000f, -1294f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1179f, 2608f, 542f) * vec3<f32>(-649f, 370f, 834f)), vec3<bool>(true, false, global0.c.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1812f, _wgslsmith_f_op_f32(f32(-1f) * -323f)) - vec3<f32>(_wgslsmith_f_op_f32(-777f - 357f), 1673f, _wgslsmith_f_op_f32(f32(-1f) * -186f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -1640f, -144f, -548f)));
    let var_2 = Struct_3(func_2(global0.d, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 605f) + -689f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), -1000f, -303f, -1683f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -182f, var_0.x, -1000f))), 1u), global0.a | _wgslsmith_div_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(-39539i, global0.a.x, global0.a.x, 46216i), global0.a), select(global0.a, vec4<i32>(-14094i, -43294i, global0.a.x, global0.a.x), vec4<bool>(global0.b.x, false, false, true)) ^ ~global0.a), global0.a.x);
    var var_3 = Struct_1(4294967295u);
    var var_4 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_3.a, _wgslsmith_add_u32(var_3.a, abs(111568u))) ^ max(max(39969u, _wgslsmith_clamp_u32(var_3.a, ~var_2.a.a, u_input.a)), func_3(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_0.x)), Struct_4(Struct_2(vec4<i32>(var_2.b.x, 9989i, 2147483647i, 537i), global0.b, vec2<bool>(true, global0.c.x), Struct_1(var_3.a))))), 3u)];
    return Struct_2(-(-vec4<i32>(61675i, 58308i, -4824i, var_4.c) ^ var_2.b), global0.c, select(global0.c, global0.b, -1000f >= _wgslsmith_f_op_f32(496f - _wgslsmith_f_op_f32(var_0.x * var_0.x))), Struct_1(var_2.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.x;
    global0 = func_1(-31035i);
    global1 = array<vec3<u32>, 19>();
    var var_1 = vec4<bool>(func_1(global0.a.x).c.x, any(select(!select(vec3<bool>(global0.c.x, global0.c.x, global0.b.x), vec3<bool>(true, global0.c.x, global0.b.x), global0.c.x), select(vec3<bool>(true, true, true), vec3<bool>(global0.c.x, false, false), vec3<bool>(global0.c.x, false, global0.b.x)), ~global0.d.a == 41021u)), u_input.a < ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 42467u, global0.d.a, 4294967295u), vec4<u32>(global0.d.a, 28779u, global0.d.a, 9143u)), ~45283u), global0.b.x);
    global2 = false;
    var_1 = select(select(!vec4<bool>(-15304i != global0.a.x, true, true, true), select(!(!vec4<bool>(global0.b.x, true, true, var_1.x)), select(!vec4<bool>(var_1.x, false, global0.c.x, global0.b.x), vec4<bool>(global0.b.x, true, global0.b.x, global0.c.x), vec4<bool>(global0.b.x, global0.b.x, true, true)), func_1(global0.a.x).b.x), func_1(firstLeadingBit(global0.a.x)).c.x), !vec4<bool>(any(vec4<bool>(true, global0.c.x, global0.c.x, var_1.x)), true, !select(false, false, global0.b.x), !(!global0.c.x)), vec4<bool>(global0.b.x, all(global0.b), all(vec2<bool>(true, func_1(21423i).c.x)), true || any(!vec4<bool>(true, global0.b.x, true, true))));
    let var_2 = -((reverseBits(global0.a.x << (0u % 32u)) ^ global0.a.x) ^ -36642i);
    global1 = array<vec3<u32>, 19>();
    let var_3 = func_1(~1i ^ ~func_1(~var_2).a.x).d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1603f), -147f)) * 512f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1331f * -258f), _wgslsmith_div_f32(1000f, -926f))))));
}


struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(-1i, vec2<f32>(348f, -848f), vec3<bool>(false, false, false), vec2<u32>(4294967295u, 137673u)), Struct_3(1i, vec2<f32>(185f, 524f), vec3<bool>(true, true, false), vec2<u32>(1u, 4294967295u)), Struct_3(54346i, vec2<f32>(-299f, 597f), vec3<bool>(true, true, false), vec2<u32>(4294967295u, 33783u)), Struct_3(2147483647i, vec2<f32>(-2044f, 1080f), vec3<bool>(false, false, false), vec2<u32>(4294967295u, 1u)), Struct_3(11299i, vec2<f32>(-367f, 237f), vec3<bool>(false, false, false), vec2<u32>(1u, 0u)), Struct_3(i32(-2147483648), vec2<f32>(1073f, 793f), vec3<bool>(false, true, false), vec2<u32>(0u, 1u)), Struct_3(1i, vec2<f32>(724f, 1000f), vec3<bool>(false, true, true), vec2<u32>(1u, 48262u)), Struct_3(-27704i, vec2<f32>(-1000f, -1121f), vec3<bool>(false, true, true), vec2<u32>(1u, 1u)), Struct_3(-20619i, vec2<f32>(-479f, -974f), vec3<bool>(false, false, false), vec2<u32>(7823u, 26992u)), Struct_3(8449i, vec2<f32>(-1686f, 524f), vec3<bool>(true, true, false), vec2<u32>(6801u, 1u)), Struct_3(-34713i, vec2<f32>(-2075f, -878f), vec3<bool>(true, true, true), vec2<u32>(0u, 72036u)));

var<private> global2: i32;

var<private> global3: array<f32, 2> = array<f32, 2>(1234f, 1071f);

var<private> global4: f32 = -1730f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    return _wgslsmith_add_vec4_u32(vec4<u32>(1u, ~u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x) ^ firstTrailingBit(10466u), ~reverseBits(~19737u)), _wgslsmith_mult_vec4_u32(vec4<u32>(~23822u, 44876u, ~abs(5372u), u_input.b.x), vec4<u32>(abs(_wgslsmith_mult_u32(37268u, 31611u)), ~_wgslsmith_mod_u32(4294967295u, 58351u), _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), ~4983u), u_input.b.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: f32) -> u32 {
    let var_0 = Struct_1(arg_0.wx, arg_1.c.x);
    global1 = array<Struct_3, 11>();
    var var_1 = _wgslsmith_div_vec3_u32(~countOneBits(~min(arg_0.xzw, vec3<u32>(13601u, 2820u, arg_0.x))), abs(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 5777u, 40136u), arg_0.wwy), ~arg_0.zzz) << (~select(vec3<u32>(4294967295u, 0u, 14248u), arg_0.yyy, true) % vec3<u32>(32u))));
    global2 = ~select(select(~arg_1.a, abs(u_input.c) << (45313u % 32u), var_0.b), abs(38025i), true);
    global0 = !select(vec3<bool>(!all(arg_1.c.xz), true, true), select(arg_1.c, vec3<bool>(true, true, true), var_0.b), false & any(!vec3<bool>(true, arg_1.c.x, true)));
    return 56221u;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: i32) -> vec3<bool> {
    global2 = -46834i;
    var var_0 = ~arg_0.x < ~(~arg_1.d.x);
    let var_1 = func_4(func_3(), global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.b.x, 4294967295u)), ~vec2<u32>(arg_0.x, u_input.b.x))), 11u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.b.x)) - 473f));
    global1 = array<Struct_3, 11>();
    var var_2 = vec3<bool>(global0.x, global0.x, false);
    return select(vec3<bool>(var_2.x, !global0.x, var_2.x), vec3<bool>(!var_2.x, global0.x, all(var_2.xz)), !arg_1.c.x);
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(func_3().x, Struct_3(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.a, 78708i, arg_0.a) & vec4<i32>(0i, u_input.c, 1i, 2147483647i), vec4<i32>(-12476i, -10800i, -9321i, u_input.c))), vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~31888u, 2u)]), _wgslsmith_f_op_f32(-578f - _wgslsmith_f_op_f32(-1156f + -1281f))), vec3<bool>(true, all(select(vec3<bool>(false, global0.x, global0.x), arg_0.c, vec3<bool>(arg_0.c.x, true, arg_0.c.x))), (u_input.c & arg_0.a) > _wgslsmith_mult_i32(-2147483647i, u_input.a)), firstTrailingBit(~_wgslsmith_div_vec2_u32(arg_0.d, vec2<u32>(arg_0.d.x, 0u)))), global3[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(_wgslsmith_div_u32(~u_input.b.x, 19594u), _wgslsmith_div_u32(abs(arg_0.d.x), _wgslsmith_add_u32(33317u, 1u)))), 2u)]);
    let var_1 = 1u;
    var var_2 = select(vec4<bool>(all(select(select(vec4<bool>(arg_0.c.x, arg_0.c.x, var_0.b.c.x, false), vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(arg_0.c.x, var_0.b.c.x, var_0.b.c.x, global0.x)), vec4<bool>(false, true, true, var_0.b.c.x), !vec4<bool>(var_0.b.c.x, global0.x, var_0.b.c.x, false))), arg_0.d.x < 2213u, all(select(global0.yy, vec2<bool>(true, var_0.b.c.x), global0.xz)), false), vec4<bool>(!(var_0.b.b.x == 1f), any(!func_2(vec3<u32>(arg_0.d.x, arg_0.d.x, var_1), Struct_3(-1i, arg_0.b, vec3<bool>(false, false, true), vec2<u32>(arg_0.d.x, 15907u)), var_0.b.a).zy), var_0.b.c.x && true, !arg_0.c.x), true);
    var var_3 = arg_0.c.x;
    global4 = 330f;
    return Struct_1(vec2<u32>(var_1, var_1), var_0.b.c.x);
}

fn func_1() -> i32 {
    var var_0 = func_5(Struct_3(_wgslsmith_clamp_i32(1i, u_input.c, ~u_input.c) & ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-4448i, u_input.c)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(106208u, 2u)], global3[_wgslsmith_index_u32(u_input.b.x, 2u)]))))), select(select(select(vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, global0.x, false), true), vec3<bool>(false, false, true), true), select(func_2(vec3<u32>(45873u, 4294967295u, u_input.b.x), Struct_3(u_input.c, vec2<f32>(global3[_wgslsmith_index_u32(100504u, 2u)], 609f), vec3<bool>(global0.x, global0.x, true), u_input.b), u_input.a), vec3<bool>(global0.x, true, global0.x), !vec3<bool>(global0.x, global0.x, global0.x)), vec3<bool>(global0.x, all(vec3<bool>(global0.x, global0.x, false)), global0.x)), _wgslsmith_sub_vec2_u32(abs(max(u_input.b, vec2<u32>(43920u, u_input.b.x))), select(func_3().xy, vec2<u32>(135120u, 1u) >> (vec2<u32>(u_input.b.x, 118592u) % vec2<u32>(32u)), global0.x))));
    var var_1 = select(!func_2(abs(abs(vec3<u32>(u_input.b.x, 4294967295u, 4294967295u))), Struct_3(u_input.a, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-941f, 107f), vec2<f32>(global3[_wgslsmith_index_u32(1u, 2u)], 1908f))), select(vec3<bool>(false, true, global0.x), vec3<bool>(true, false, false), false), func_3().yx), -2147483647i), vec3<bool>(global0.x, !select(global0.x, 4838i > u_input.c, true), select(!(!var_0.b), all(func_2(vec3<u32>(var_0.a.x, var_0.a.x, 0u), global1[_wgslsmith_index_u32(4780u, 11u)], -24926i)), false)), !select(any(!vec4<bool>(false, var_0.b, true, global0.x)), true, !(var_0.a.x == 17000u)));
    var var_2 = 1441u;
    var var_3 = 112f;
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-491f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(7055u, 2u)] * -879f), _wgslsmith_f_op_f32(min(1300f, global3[_wgslsmith_index_u32(0u, 2u)]))) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), vec2<u32>(var_0.a.x, u_input.b.x)), 2u)] * global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, 33274u), 2u)])))));
    return -7679i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(21224u, global1[_wgslsmith_index_u32(4294967295u, 11u)], _wgslsmith_f_op_f32(1204f - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(11345u, 0u, u_input.b.x, 1897u), vec4<u32>(0u, 4294967295u, 66716u, 4949u)), 2u)])));
    global2 = var_0.b.a;
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2041f))))));
    global2 = -func_1();
    var var_1 = Struct_1(func_5(var_0.b).a, !(true & all(vec4<bool>(true, var_0.b.c.x, var_0.b.c.x, global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.d, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-136f, var_0.c, var_0.b.b.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b.b.x, var_0.b.b.x, -662f)))) * vec3<f32>(_wgslsmith_f_op_f32(step(-1570f, -2245f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 2u)] * global3[_wgslsmith_index_u32(var_1.a.x, 2u)]), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.b.d.x, var_1.a.x), 2u)])))));
}


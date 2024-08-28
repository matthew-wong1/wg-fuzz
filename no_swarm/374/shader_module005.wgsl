struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<f32>(310f, 561f, -1694f), Struct_2(vec2<u32>(0u, 2570u), 263f, vec2<f32>(-1000f, -763f), true), vec2<f32>(542f, -1871f), Struct_3(vec4<bool>(true, true, true, false)), Struct_2(vec2<u32>(11065u, 4294967295u), 749f, vec2<f32>(326f, 1000f), false));

var<private> global1: array<bool, 26>;

var<private> global2: u32 = 22050u;

var<private> global3: array<vec4<bool>, 25>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_3, arg_3: vec2<f32>) -> vec2<u32> {
    global1 = array<bool, 26>();
    var var_0 = select(select(!global0.d.a.yy, global0.d.a.yy, vec2<bool>(false, true && select(global0.b.d, global1[_wgslsmith_index_u32(13850u, 26u)], true))), select(!select(vec2<bool>(global0.d.a.x, global0.e.d), arg_2.a.yz, all(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(global0.e.a.x, 26u)]))), vec2<bool>(false, true), true != !(true | global0.b.d)), true);
    global1 = array<bool, 26>();
    let var_1 = global0.d;
    global1 = array<bool, 26>();
    return select(vec2<u32>(global0.b.a.x, global0.e.a.x), vec2<u32>(firstLeadingBit(~_wgslsmith_mod_u32(arg_0.x, 0u)), 13984u), select(!vec2<bool>(var_0.x, true), select(vec2<bool>(global0.d.a.x, true), vec2<bool>(true, all(global0.d.a.zzw)), !(!global0.d.a.xz)), select(select(arg_2.a.ww, global0.d.a.xy, global0.d.a.xy), vec2<bool>(all(global0.d.a.zx), true), vec2<bool>(true, any(vec2<bool>(false, var_0.x))))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global2 = global0.e.a.x;
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(~_wgslsmith_add_u32(global0.b.a.x, global0.b.a.x)), ~arg_0.x, 49006u), ~vec3<u32>(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(global0.e.a.x, 0u, 4294967295u)), _wgslsmith_clamp_u32(arg_0.x, global0.e.a.x, arg_0.x), arg_0.x) >> ((abs(arg_0) >> (arg_0 % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_1 = Struct_4(vec3<f32>(-733f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), 142f), global0.b, global0.e.c, Struct_3(!global0.d.a), Struct_2(vec2<u32>(arg_0.x, 0u), 245f, _wgslsmith_f_op_vec2_f32(round(global0.a.xy)), global0.d.a.x));
    global3 = array<vec4<bool>, 25>();
    var var_2 = Struct_4(global0.a, Struct_2(~func_3(~vec2<u32>(arg_0.x, global0.e.a.x), countOneBits(u_input.d), Struct_3(vec4<bool>(global1[_wgslsmith_index_u32(var_1.e.a.x, 26u)], true, true, false)), _wgslsmith_f_op_vec2_f32(trunc(global0.a.zx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x - -145f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-278f, -1102f))))), any(!select(global0.d.a.xy, var_1.d.a.yw, vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_1.b.c * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global0.b.c, vec2<f32>(global0.c.x, 214f))))))), var_1.d, Struct_2(abs(func_3(~arg_0.zy, _wgslsmith_mult_i32(u_input.d, -2068i), Struct_3(vec4<bool>(global1[_wgslsmith_index_u32(29780u, 26u)], true, global0.e.d, var_1.b.d)), _wgslsmith_f_op_vec2_f32(var_1.a.xx - var_1.e.c))), var_1.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.e.c))), select(_wgslsmith_f_op_f32(step(global0.c.x, global0.a.x)) == _wgslsmith_f_op_f32(global0.c.x + global0.a.x), !(global0.a.x == var_1.b.b), _wgslsmith_mod_i32(u_input.a, u_input.c) >= -11273i)));
    return Struct_1(~firstTrailingBit(var_0), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-293f, -732f, -278f)), vec3<f32>(826f, var_2.b.c.x, -2097f), select(var_2.d.a.zwy, global0.d.a.wzx, var_1.d.a.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(global0.a, vec3<f32>(var_2.e.b, -446f, var_1.c.x))))))), var_2.a)), ~select(var_1.e.a.x, ~func_3(var_1.e.a, u_input.b, var_1.d, vec2<f32>(global0.c.x, 945f)).x, any(vec3<bool>(false, false, false))), vec4<bool>(any(global0.d.a.wx), true, !var_2.e.d && true, all(!vec4<bool>(global0.b.d, true, global1[_wgslsmith_index_u32(var_2.b.a.x, 26u)], global0.d.a.x))));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> StorageBuffer {
    let var_0 = i32(-1i) * -(~0i);
    var var_1 = func_2(arg_1);
    var var_2 = -reverseBits(abs(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-3942i, -65957i)), ~vec2<i32>(2147483647i, u_input.d))));
    let var_3 = ~((-1i ^ var_0) & 2147483647i);
    var var_4 = false;
    return StorageBuffer(-1120f, vec3<i32>(0i, -26559i, _wgslsmith_div_i32(reverseBits(var_3), _wgslsmith_sub_i32(var_0, var_3)) >> (~(50645u & var_1.c) % 32u)), firstTrailingBit(min(global0.b.a, ~(arg_1.zy & vec2<u32>(arg_1.x, 2029u)))), _wgslsmith_mult_u32(~(~global0.b.a.x), global0.b.a.x), ~(~countOneBits(abs(vec4<u32>(arg_1.x, 33415u, 26680u, 31549u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b.d;
    let var_1 = global0.b.a.x >= ~firstTrailingBit(_wgslsmith_mod_u32(~4294967295u, abs(global0.e.a.x)));
    let var_2 = vec4<bool>(!(global0.d.a.x & !(-490f != global0.a.x)), var_1 != any(global0.d.a.zx), global1[_wgslsmith_index_u32(19697u, 26u)], true);
    global3 = array<vec4<bool>, 25>();
    var var_3 = var_1;
    let x = u_input.a;
    s_output = func_1(false, _wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, 0u, global0.e.a.x)) & vec3<u32>(global0.b.a.x << (0u % 32u), ~1u, ~global0.e.a.x), ~vec3<u32>(_wgslsmith_div_u32(79589u, global0.b.a.x), 1u, global0.b.a.x | 4294967295u)));
}


struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3>;

var<private> global1: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(4294967295u, 26301u, 4294967295u, 44663u), vec4<u32>(73839u, 66783u, 57925u, 0u), vec4<u32>(1u, 0u, 33477u, 40534u), vec4<u32>(109275u, 59751u, 1u, 1u), vec4<u32>(4294967295u, 10964u, 0u, 37121u), vec4<u32>(1u, 3489u, 4294967295u, 95065u), vec4<u32>(14521u, 4294967295u, 34759u, 41391u), vec4<u32>(7807u, 2363u, 1u, 62381u), vec4<u32>(4294967295u, 4084u, 1u, 60855u), vec4<u32>(1u, 1u, 0u, 26692u), vec4<u32>(11432u, 24393u, 25206u, 4294967295u), vec4<u32>(4294967295u, 31456u, 1u, 0u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(0u, 1u, 1u, 80860u), vec4<u32>(45192u, 1u, 1u, 19079u), vec4<u32>(0u, 52696u, 1u, 0u), vec4<u32>(1510u, 19231u, 0u, 64205u));

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 0u, 1u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> f32 {
    global1 = array<vec4<u32>, 17>();
    global1 = array<vec4<u32>, 17>();
    let var_0 = ~(~(~u_input.a));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-633f, _wgslsmith_f_op_f32(f32(-1f) * -668f), _wgslsmith_f_op_f32(1286f - -137f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(954f, -341f, 1673f, -589f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(644f, 1351f, -1000f, 1681f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-727f, -487f, 171f, -1604f), vec4<f32>(-1000f, 1193f, 843f, -1690f))))), Struct_1(reverseBits(vec3<i32>(-1458i, 15534i, 1i)), arg_1.zx, arg_1.x)), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(2080f, _wgslsmith_f_op_f32(1817f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -451f)) * vec3<f32>(-919f, 1f, _wgslsmith_f_op_f32(sign(214f)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-2428f)), -272f, _wgslsmith_f_op_f32(step(-857f, 680f)), _wgslsmith_f_op_f32(-721f * 1429f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-428f, 503f, 1744f, 1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1047f, -1444f, -1654f, -640f)))), Struct_1(-abs(vec3<i32>(21325i, u_input.d, u_input.d)), select(select(arg_1.xy, arg_1.xx, arg_1.zz), arg_1.yy, all(vec2<bool>(arg_1.x, arg_1.x))), !arg_1.x)));
    var var_2 = _wgslsmith_div_f32(-126f, var_1.a.b.x);
    return var_1.b.b.x;
}

fn func_3(arg_0: u32) -> vec3<u32> {
    let var_0 = global0[_wgslsmith_index_u32(~4294967295u, 3u)];
    var var_1 = var_0.b;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1.a))), var_1.a) + var_0.a.a), var_1.b, Struct_1(var_0.a.c.a, select(vec2<bool>(var_1.c.b.x, false), var_0.a.c.b, !(var_0.b.c.c | false)), any(select(select(vec3<bool>(true, true, false), vec3<bool>(var_1.c.b.x, var_0.b.c.b.x, true), vec3<bool>(true, var_1.c.c, var_0.a.c.b.x)), !vec3<bool>(var_0.a.c.c, true, true), vec3<bool>(false, false, var_0.a.c.c)))));
    let var_3 = var_2.b.x;
    let var_4 = false;
    return ~vec3<u32>(125548u, _wgslsmith_sub_u32(1u, arg_0), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 0u, 0u), _wgslsmith_add_vec3_u32(u_input.a.zzx, vec3<u32>(4294967295u, 1u, global2.x))), 50480u));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: u32) -> vec3<u32> {
    var var_0 = global0[_wgslsmith_index_u32(71745u, 3u)];
    let var_1 = var_0.b.c.a.x;
    var var_2 = vec3<u32>(arg_2, 4294967295u, 4294967295u);
    global0 = array<Struct_3, 3>();
    var_0 = Struct_3(var_0.b, var_0.a);
    return func_3(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -379f) - _wgslsmith_div_f32(-1247f, -1587f)), _wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(u_input.c.x, u_input.e), ~48593u) >> (select(global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(67200u, u_input.e), global2.xx), all(vec3<bool>(true, false, false))) % 32u), !vec3<bool>(false, select(true, false, false), true))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(553f + 298f))))));
    var var_1 = true;
    global1 = array<vec4<u32>, 17>();
    var var_2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(~42965u, 0i, ~(~(~4294967295u))), var_0.wzw, 647f, var_0);
}


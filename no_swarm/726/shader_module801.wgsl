struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: Struct_2,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_3, 32>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, true), vec2<bool>(true, false), 1u);

var<private> global3: u32 = 4294967295u;

var<private> global4: array<u32, 17> = array<u32, 17>(18839u, 4294967295u, 1u, 71316u, 64781u, 16434u, 36546u, 4294967295u, 0u, 4294967295u, 19351u, 63332u, 4294967295u, 4294967295u, 11450u, 0u, 41512u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(49340u, 32u)];
    global1 = array<Struct_3, 32>();
    let var_1 = global2.b.x;
    global3 = global4[_wgslsmith_index_u32(~u_input.b.x, 17u)];
    var var_2 = global0.zz;
    return var_0.c;
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_2(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-923f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(620f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-490f)) * _wgslsmith_f_op_f32(734f + 794f))) + 249f), Struct_1(vec2<bool>(!global2.a.x, global2.b.x || true), vec2<bool>(global2.b.x, true), u_input.e));
    let var_1 = var_0.d.a.x;
    let var_2 = var_0;
    var var_3 = false;
    var_3 = !var_1;
    return !vec2<bool>(var_0.d.b.x, true);
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = vec4<u32>(global4[_wgslsmith_index_u32(4294967295u | arg_0.x, 17u)] ^ ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(global2.c, 17u)], 37344u, 0u), _wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(102746u, 90723u))), reverseBits(1u), u_input.e, global2.c);
    let var_1 = func_2();
    var var_2 = var_0;
    global4 = array<u32, 17>();
    let var_3 = Struct_3(vec3<u32>(~(~_wgslsmith_mult_u32(40158u, 1u)), func_2().d.c, ~arg_0.x), !(!(true && any(vec4<bool>(false, false, var_1.d.a.x, var_1.d.b.x)))), Struct_2(_wgslsmith_add_u32(~0u, reverseBits(arg_0.x)) & countOneBits(~global4[_wgslsmith_index_u32(var_1.d.c, 17u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(-var_1.c), func_2().d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(622f, _wgslsmith_f_op_f32(var_1.c - 736f)))), vec3<bool>((_wgslsmith_f_op_f32(var_1.c + var_1.b) == _wgslsmith_f_op_f32(round(var_1.c))) | any(func_3()), !(global4[_wgslsmith_index_u32(1u, 17u)] >= select(4294967295u, 1u, false)), var_1.d.b.x));
    return var_3.c;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: u32, arg_3: vec4<i32>) -> Struct_3 {
    global3 = arg_0.c.a;
    global2 = arg_0.c.d;
    var var_0 = _wgslsmith_mult_vec2_i32(-(~(~vec2<i32>(-42049i, arg_3.x)) << ((u_input.b.yz ^ ~vec2<u32>(1u, 31303u)) % vec2<u32>(32u))), ~vec2<i32>(_wgslsmith_dot_vec3_i32(arg_3.ywy, global0.wwy), ~u_input.c) & global0.yw);
    let var_1 = !func_1(max(vec2<u32>(abs(global4[_wgslsmith_index_u32(1u, 17u)]), ~1u), vec2<u32>(4294967295u, ~30831u))).d.b.x;
    let var_2 = -1000f;
    return global1[_wgslsmith_index_u32(reverseBits(u_input.b.x >> (~(~_wgslsmith_sub_u32(global2.c, 79598u)) % 32u)), 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2187f;
    global1 = array<Struct_3, 32>();
    let var_1 = func_4(Struct_3(u_input.b.xwz, global2.a.x, func_1(u_input.b.zx), vec2<f32>(1601f, var_0), !select(vec3<bool>(global2.b.x, false, true), !vec3<bool>(global2.a.x, true, global2.a.x), true)), true, ~_wgslsmith_add_u32(1u, abs(global2.c)), firstLeadingBit(min(-firstLeadingBit(vec4<i32>(0i, -2147483647i, 25305i, global0.x)), select(vec4<i32>(-1i, global0.x, global0.x, -25580i) ^ vec4<i32>(1i, 2147483647i, u_input.c, -52445i), vec4<i32>(u_input.d, global0.x, -1i, 1i) << (u_input.b % vec4<u32>(32u)), select(vec4<bool>(global2.a.x, true, global2.a.x, global2.b.x), vec4<bool>(true, global2.b.x, true, true), vec4<bool>(global2.b.x, global2.a.x, global2.a.x, global2.b.x))))));
    global2 = func_4(var_1, var_1.c.b != _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(sign(var_0))), ~(~_wgslsmith_clamp_u32(57141u, _wgslsmith_div_u32(var_1.a.x, 4294967295u), 0u)), abs(vec4<i32>(abs(-global0.x), max(global0.x, global0.x) >> (~global4[_wgslsmith_index_u32(55245u, 17u)] % 32u), -_wgslsmith_dot_vec3_i32(global0.xzz, vec3<i32>(global0.x, -16089i, -2147483647i)), 1i << (~4294967295u % 32u)))).c.d;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-563f, var_0, 1785f), vec3<f32>(-678f, var_0, -593f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(215f, var_0, var_1.c.c))), vec3<f32>(1436f, -145f, -528f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1621f, 919f, var_0)))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.d.x)), func_2().b, -1780f)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))) + -452f);
    var var_4 = _wgslsmith_mod_u32(~global4[_wgslsmith_index_u32(92136u, 17u)], _wgslsmith_dot_vec4_u32(~(~countOneBits(vec4<u32>(1u, 1u, u_input.b.x, var_1.a.x))), vec4<u32>(var_1.a.x, 0u, ~_wgslsmith_add_u32(1u, 7326u), 1u & u_input.b.x)));
    let var_5 = !(~(~(0u << (1u % 32u))) >= u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(31065u, 54213i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2, vec3<f32>(-1000f, -732f, var_1.c.b)) + var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(800f))));
}


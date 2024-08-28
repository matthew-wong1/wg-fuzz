struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec4<bool>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, true), 140619u, -17131i);

var<private> global3: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(66081u, 4294967295u), vec2<u32>(53059u, 5248u), vec2<u32>(37656u, 22284u), vec2<u32>(0u, 0u));

var<private> global4: vec4<i32> = vec4<i32>(i32(-2147483648), 35090i, 30521i, -13693i);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> vec4<bool> {
    global1 = select(vec4<bool>(true, global1.x, any(vec4<bool>(any(vec4<bool>(global1.x, true, global1.x, global1.x)), !global2.a.x, true, global2.a.x)), _wgslsmith_mod_u32(~32038u, _wgslsmith_mod_u32(u_input.b, arg_1.x)) > 1u), !vec4<bool>(any(vec2<bool>(true, global1.x)), true, any(select(global1.ww, global1.xz, global2.a.x)), global2.a.x), global2.a.x);
    global4 = abs(min(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.a, global4.x, _wgslsmith_clamp_i32(-2147483647i, 11467i, global4.x)), vec4<i32>(~(-27581i), 1i, reverseBits(u_input.a), abs(global2.c))), select(~(-vec4<i32>(2147483647i, 25661i, global2.c, global4.x)), vec4<i32>(~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.c, -1i, -37178i, u_input.a), vec4<i32>(u_input.a, global4.x, global4.x, 1i)), _wgslsmith_mult_i32(global2.c, 1i), reverseBits(u_input.a)), !vec4<bool>(true, true, false, global2.a.x))));
    let var_0 = true & global1.x;
    var var_1 = Struct_1(vec2<bool>(!(!global2.a.x), !all(select(vec4<bool>(false, false, false, var_0), vec4<bool>(true, false, false, true), var_0))), ~u_input.b, min(~(20455i & global2.c), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global4.xy, vec2<i32>(global2.c, u_input.a)), _wgslsmith_sub_i32(-1i, global2.c ^ global2.c))));
    var var_2 = global4.x ^ -1i;
    return vec4<bool>(select(any(!(!vec4<bool>(global1.x, true, true, true))), true, true), _wgslsmith_div_i32(~(~var_1.c), ~(~(-2147483647i))) > var_1.c, false, var_0);
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_2) -> vec4<bool> {
    global3 = array<vec2<u32>, 4>();
    let var_0 = true;
    var var_1 = select(func_3(global0.x, vec2<u32>(abs(_wgslsmith_div_u32(arg_2.a.b, u_input.b)), ~u_input.b)), !select(func_3(_wgslsmith_f_op_f32(-121f - global0.x), vec2<u32>(1u, 5967u)), vec4<bool>(global1.x, arg_2.a.c < u_input.a, arg_0, all(vec4<bool>(false, true, false, false))), !(!arg_1.x)), !(!vec4<bool>(any(vec4<bool>(arg_1.x, arg_1.x, arg_2.a.a.x, false)), 545f <= global0.x, false, arg_2.a.a.x)));
    var var_2 = arg_2.a;
    var var_3 = Struct_2(Struct_1(select(select(vec2<bool>(var_0, global2.a.x), !vec2<bool>(true, var_0), !global2.a), select(select(arg_1, vec2<bool>(global2.a.x, false), vec2<bool>(true, false)), arg_2.a.a, global1.wy), arg_2.a.a), firstTrailingBit(23222u), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(i32(-1i) * -54582i, abs(var_2.c), -46978i), abs(_wgslsmith_dot_vec3_i32(global4.xzy, vec3<i32>(19753i, 0i, -1i))))), (~(-arg_2.b) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, global2.b, 42907u, arg_2.a.b), abs(vec4<u32>(arg_2.a.b, 87243u, arg_2.a.b, global2.b))) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(12451u, 4294967295u, u_input.b, var_2.b)) << (min(vec4<u32>(arg_2.a.b, 0u, 1u, 4294967295u), vec4<u32>(global2.b, u_input.b, 1109u, 69525u)) % vec4<u32>(32u)), reverseBits(abs(vec4<u32>(12636u, u_input.b, global2.b, 1u)))) % vec4<u32>(32u)));
    return func_3(_wgslsmith_f_op_f32(-167f + _wgslsmith_f_op_f32(max(global0.x, 362f))), ~select(select(~vec2<u32>(0u, u_input.b), select(vec2<u32>(1u, 0u), vec2<u32>(arg_2.a.b, 53334u), var_0), !vec2<bool>(var_2.a.x, var_1.x)), global3[_wgslsmith_index_u32(4294967295u, 4u)], vec2<bool>(true, true)));
}

fn func_1() -> u32 {
    global3 = array<vec2<u32>, 4>();
    var var_0 = Struct_2(Struct_1(vec2<bool>(all(vec4<bool>(false, global2.a.x, global2.a.x, global1.x)), _wgslsmith_f_op_f32(-391f - global0.x) != global0.x), ~u_input.b, global2.c), ~_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, global4.x, global4.x, -2147483647i) ^ vec4<i32>(-1i, u_input.a, 16110i, u_input.a), vec4<i32>(global2.c, global2.c, -2147483647i, -2147483647i)), vec4<i32>(-global2.c, -global4.x, 1i, -2147483647i)));
    var_0 = Struct_2(Struct_1(vec2<bool>(any(func_2(false, vec2<bool>(global2.a.x, var_0.a.a.x), Struct_2(Struct_1(var_0.a.a, 37547u, -27563i), var_0.b))), var_0.a.a.x), global2.b, _wgslsmith_mod_i32(-2147483647i, ~(~var_0.b.x))), select(vec4<i32>(0i, ~(-39671i), -40514i ^ global2.c, -global4.x), firstLeadingBit(max(vec4<i32>(u_input.a, -1i, global2.c, var_0.b.x), var_0.b & var_0.b)), global1.x));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-701f, global0.x), vec2<f32>(-977f, global0.x), vec2<bool>(true, false)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -571f) - vec2<f32>(-619f, 530f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-379f, global0.x), vec2<f32>(global0.x, global0.x))))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, 3147f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, global0.x))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1323f, global0.x) * vec2<f32>(327f, global0.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 336f) * vec2<f32>(global0.x, 798f)))))), false));
    var var_1 = -countOneBits(i32(-1i) * -1i);
    return ~(global2.b >> (global2.b % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = vec4<bool>(global1.x, !global2.a.x, true, !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x - 116f))) >= 1f));
    let var_2 = _wgslsmith_div_u32(1u, u_input.b ^ ~func_1());
    var var_3 = -1825f;
    var var_4 = Struct_1(global1.zz, min(_wgslsmith_clamp_u32(global2.b, abs(1u), 7710u), firstLeadingBit(global2.b)), -25245i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~(var_4.b ^ var_4.b), _wgslsmith_add_u32(var_4.b, var_2), 55171u), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-773f, _wgslsmith_f_op_f32(-831f - _wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_dot_vec2_i32(global4.xx, countOneBits(global4.zw)), _wgslsmith_mod_vec4_i32(-(~vec4<i32>(global2.c, 2147483647i, u_input.a, var_4.c)), vec4<i32>(select(0i, u_input.a, false), _wgslsmith_dot_vec3_i32(global4.yzz, vec3<i32>(u_input.a, var_4.c, var_4.c)), -22223i, _wgslsmith_mod_i32(global2.c, 40778i))) & ~(~(-vec4<i32>(u_input.a, -16854i, global4.x, global2.c))), abs(~(-(~vec2<i32>(0i, -5673i)))));
}


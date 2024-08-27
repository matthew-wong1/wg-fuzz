struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(0i, true, vec3<i32>(-9470i, 7286i, 7403i), 55732u, vec3<f32>(-1726f, -1000f, 1689f)), vec4<f32>(-133f, 340f, -559f, -1304f), 12023u);

var<private> global1: array<Struct_2, 29>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> f32 {
    global1 = array<Struct_2, 29>();
    let var_0 = _wgslsmith_add_u32(u_input.a, ~1u);
    let var_1 = select(vec3<u32>(select(global0.a.d, max(94592u, u_input.a), any(vec3<bool>(global0.a.b, global0.a.b, false))), 4294967295u, _wgslsmith_add_u32(min(global0.c, 65000u), global0.c)) & _wgslsmith_add_vec3_u32(vec3<u32>(18682u, var_0, 79151u) ^ select(vec3<u32>(0u, var_0, global0.c), vec3<u32>(global0.c, var_0, u_input.b), arg_0), _wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.a, global0.a.d, 1u), vec3<u32>(u_input.a, 29797u, 3234u), vec3<bool>(arg_0, arg_0, false)), vec3<u32>(var_0, var_0, 61135u) & vec3<u32>(1u, 4294967295u, 1u))), ~(~(~(~vec3<u32>(u_input.a, 0u, u_input.b)))), vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -306f) - _wgslsmith_f_op_f32(f32(-1f) * -317f)) <= global0.b.x, true));
    let var_2 = !select(select(vec4<bool>(true, all(vec4<bool>(true, true, false, arg_0)), false, arg_0), select(!vec4<bool>(false, false, true, arg_0), vec4<bool>(true, true, true, true), global0.b.x >= 643f), !(!global0.a.b)), select(select(!vec4<bool>(false, false, global0.a.b, true), vec4<bool>(global0.a.b, arg_0, arg_0, global0.a.b), !vec4<bool>(false, false, global0.a.b, false)), select(select(vec4<bool>(false, global0.a.b, true, true), vec4<bool>(true, arg_0, global0.a.b, false), vec4<bool>(false, true, false, global0.a.b)), !vec4<bool>(false, arg_0, arg_0, false), arg_0), vec4<bool>(all(vec2<bool>(true, false)), true, arg_0, !arg_0)), !select(select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(true, arg_0, arg_0, true), false), !vec4<bool>(arg_0, global0.a.b, global0.a.b, true), !vec4<bool>(false, arg_0, global0.a.b, false)));
    global1 = array<Struct_2, 29>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(u_input.c, !(!global0.a.b), -vec3<i32>(_wgslsmith_dot_vec2_i32(global0.a.c.yz, ~global0.a.c.zx), u_input.c, _wgslsmith_dot_vec2_i32(min(global0.a.c.yx, vec2<i32>(u_input.c, 59167i)), min(vec2<i32>(2147483647i, -1364i), global0.a.c.zx))), 4294967295u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_div_f32(694f, _wgslsmith_f_op_f32(func_3(false))), arg_1.x)));
    var var_1 = 1u;
    var var_2 = max(_wgslsmith_add_vec3_u32(max(~select(vec3<u32>(0u, global0.c, 10926u), vec3<u32>(var_0.d, var_0.d, u_input.b), true), _wgslsmith_mult_vec3_u32(~vec3<u32>(global0.c, global0.a.d, 102525u), vec3<u32>(var_0.d, global0.c, var_0.d))), _wgslsmith_div_vec3_u32(~(vec3<u32>(u_input.b, u_input.a, global0.c) | vec3<u32>(1u, var_0.d, u_input.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.c, 0u, 4294967295u), select(vec3<u32>(var_0.d, 1u, 5618u), vec3<u32>(u_input.a, 4294967295u, var_0.d), vec3<bool>(global0.a.b, false, var_0.b))))), select(abs(max(vec3<u32>(global0.a.d, var_0.d, global0.c) ^ vec3<u32>(u_input.b, 37103u, 48048u), ~vec3<u32>(0u, 7590u, global0.c))), ~((vec3<u32>(31955u, 21552u, 39418u) ^ vec3<u32>(103102u, global0.c, global0.c)) >> (~vec3<u32>(global0.a.d, 0u, global0.a.d) % vec3<u32>(32u))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(var_0.b, true, true), arg_0), vec3<bool>(arg_0, var_0.b, false), false), vec3<bool>(var_0.b, true, global0.a.b), select(arg_0, global0.a.b, true) | var_0.b)));
    var var_3 = _wgslsmith_div_vec3_f32(var_0.e, global0.a.e);
    let var_4 = global1[_wgslsmith_index_u32(global0.a.d, 29u)];
    return Struct_1(var_0.a, (var_4.c << (~(~u_input.a) % 32u)) > (u_input.b & 1u), vec3<i32>(-max(4042i, i32(-1i) * -34472i), abs(~0i), 2147483647i), abs(min(~var_0.d, _wgslsmith_clamp_u32(global0.c, ~u_input.b, 73213u))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-227f, _wgslsmith_f_op_f32(f32(-1f) * -378f), var_0.e.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = ~arg_3.a.a;
    global1 = array<Struct_2, 29>();
    let var_1 = global1[_wgslsmith_index_u32(reverseBits(u_input.b), 29u)];
    var var_2 = arg_1;
    var var_3 = var_1.a.c;
    return Struct_1(-1i >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.a.d, 18880u, 0u), vec3<u32>(var_1.a.d, 81445u, 52780u)), func_2(var_1.a.a < -28713i, _wgslsmith_f_op_vec4_f32(var_1.b * vec4<f32>(293f, arg_0.a.e.x, arg_0.a.e.x, -1133f))).d, 49452u) % 32u), (global0.a.a < _wgslsmith_sub_i32(-var_3.x, countOneBits(arg_3.a.a))) == !arg_1.x, reverseBits(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global0.a.c, vec3<i32>(11895i, arg_3.a.a, -22681i)), vec3<i32>(14433i, -2147483647i, var_0)), _wgslsmith_mult_i32(1i, 1i), 18494i)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, global0.c), ~reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.d, 54665u), vec2<u32>(56253u, u_input.b), vec2<u32>(global0.c, u_input.a)))), arg_0.a.e);
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 29u)];
    let var_1 = global0.c;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.a.e.x, global0.b.x, var_0.b.x)), global0.b, select(vec4<bool>(false, true, var_0.a.b, true), vec4<bool>(true, global0.a.b, true, global0.a.b), vec4<bool>(false, var_0.a.b, false, false)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, global0.a.e.x, 1166f, -773f) + _wgslsmith_f_op_vec4_f32(-global0.b))))));
    var var_3 = var_2.x;
    global0 = Struct_2(func_4(Struct_2(Struct_1(_wgslsmith_sub_i32(15126i, u_input.c), global0.a.d > u_input.a, vec3<i32>(2151i, -1i, 1i), ~4294967295u, vec3<f32>(var_2.x, var_2.x, 769f)), vec4<f32>(var_2.x, -520f, 2166f, 209f), ~global0.c), select(!select(vec3<bool>(true, var_0.a.b, false), vec3<bool>(true, false, global0.a.b), global0.a.b), !select(vec3<bool>(true, false, false), vec3<bool>(global0.a.b, global0.a.b, false), vec3<bool>(false, false, var_0.a.b)), !global0.a.b), vec2<bool>(true, true), Struct_2(func_2(var_0.c < 33040u, vec4<f32>(337f, 2151f, global0.b.x, var_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, -2694f, var_0.a.e.x))), 1u)), global0.b, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.b, var_0.a.d, u_input.b), vec3<u32>(var_0.a.d, 1u, 0u), var_0.a.b), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_0.a.d, var_0.a.d), vec3<u32>(0u, 1u, 48325u)), vec3<u32>(global0.c, 4294967295u, u_input.a)), vec3<u32>(64239u, var_0.a.d, u_input.b) >> (firstTrailingBit(vec3<u32>(u_input.b, 12933u, u_input.b)) % vec3<u32>(32u))) << (global0.a.d % 32u));
    return global1[_wgslsmith_index_u32(min(u_input.a | 4294967295u, 29719u), 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.d;
    var var_1 = !select(select(select(vec2<bool>(global0.a.b, false), !vec2<bool>(global0.a.b, false), select(vec2<bool>(global0.a.b, true), vec2<bool>(global0.a.b, global0.a.b), vec2<bool>(global0.a.b, true))), !(!vec2<bool>(true, global0.a.b)), select(select(vec2<bool>(true, global0.a.b), vec2<bool>(true, global0.a.b), vec2<bool>(global0.a.b, global0.a.b)), vec2<bool>(true, true), false)), vec2<bool>(true, global0.a.b), !vec2<bool>(true, !global0.a.b));
    var var_2 = ~countOneBits(~(~(~vec2<u32>(13405u, 24718u))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(746f + global0.b.x), _wgslsmith_f_op_f32(-615f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-409f, global0.a.e.x)))), 2104f);
    let var_4 = func_1(select(~(~abs(global0.a.a)), 2147483647i, var_1.x));
    var var_5 = !select(!select(vec4<bool>(global0.a.b, global0.a.b, true, var_1.x), select(vec4<bool>(var_4.a.b, global0.a.b, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, true), var_4.a.b), vec4<bool>(false, false, global0.a.b, global0.a.b)), select(select(select(vec4<bool>(true, false, global0.a.b, global0.a.b), vec4<bool>(var_4.a.b, global0.a.b, false, false), var_1.x), !vec4<bool>(false, false, false, global0.a.b), vec4<bool>(var_1.x, var_4.a.b, global0.a.b, var_4.a.b)), vec4<bool>(false, true, select(true, global0.a.b, var_1.x), global0.a.e.x != global0.a.e.x), vec4<bool>(true, var_4.a.b, var_1.x, global0.a.d >= 1u)), !select(vec4<bool>(global0.a.b, var_4.a.b, var_1.x, global0.a.b), vec4<bool>(false, var_1.x, true, var_1.x), !vec4<bool>(true, var_1.x, false, true)));
    var_5 = vec4<bool>(true, any(var_5.zxy), all(vec3<bool>(false, var_1.x, all(var_5.zz))), any(var_5.xx));
    let var_6 = _wgslsmith_f_op_f32(-var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1512f, var_6, 406f)))) - vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * var_3.x), 998f)), vec3<f32>(_wgslsmith_f_op_f32(-449f + _wgslsmith_f_op_f32(-var_4.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1100f + var_6))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_3.x, 1000f)), _wgslsmith_f_op_f32(ceil(var_4.a.e.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_6))))));
}


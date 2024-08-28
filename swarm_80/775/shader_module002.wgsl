struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(true, vec3<bool>(false, false, true), vec4<u32>(1u, 14121u, 70489u, 1u), -430f), Struct_1(false, vec3<bool>(false, true, true), vec4<u32>(62522u, 47822u, 35903u, 69351u), 1916f), Struct_1(true, vec3<bool>(true, false, true), vec4<u32>(16445u, 48912u, 4294967295u, 1u), -749f), Struct_1(true, vec3<bool>(false, false, false), vec4<u32>(35624u, 1u, 28211u, 11512u), -1214f), Struct_1(true, vec3<bool>(true, false, false), vec4<u32>(3307u, 6282u, 4294967295u, 65707u), 1380f), Struct_1(false, vec3<bool>(true, true, false), vec4<u32>(111263u, 1u, 38500u, 0u), -1806f), Struct_1(false, vec3<bool>(false, false, true), vec4<u32>(54834u, 28530u, 37594u, 4294967295u), 364f), Struct_1(false, vec3<bool>(true, true, false), vec4<u32>(0u, 4294967295u, 45195u, 55988u), -990f), Struct_1(false, vec3<bool>(false, true, false), vec4<u32>(32804u, 1u, 0u, 12836u), -1369f));

var<private> global1: vec3<f32>;

var<private> global2: vec4<f32>;

var<private> global3: u32 = 100729u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_div_i32(3164i, -2147483647i);
    global0 = array<Struct_1, 9>();
    let var_1 = Struct_1(all(select(!select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, true), true), select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, true, arg_0), arg_0), !vec3<bool>(arg_0, arg_0, false), u_input.c.x >= -40110i), any(select(vec2<bool>(arg_0, false), vec2<bool>(true, true), vec2<bool>(arg_0, false))))), select(!select(select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0)), !vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, arg_0, true)), !(!vec3<bool>(arg_0, false, false)), !(!select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, arg_0, false), false))), select(arg_1, arg_1, !select(!vec4<bool>(arg_0, arg_0, true, true), select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(false, arg_0, false, arg_0), arg_0), 10219u >= u_input.a)), _wgslsmith_f_op_f32(select(1032f, -1482f, (all(vec4<bool>(false, false, arg_0, true)) && true) || all(vec3<bool>(true, true, true)))));
    global3 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.b.x, 80179u, 29885u) ^ var_1.c.x, _wgslsmith_sub_u32(u_input.b.x, 0u), firstLeadingBit(~(~u_input.b.x)));
    let var_2 = global2.zwx;
    return any(var_1.b);
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(arg_0.x, 9u)], abs(-(vec3<i32>(-3692i, u_input.c.x, 14731i) >> (arg_0 % vec3<u32>(32u)))) | _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.xyw), 0i, -68430i), u_input.c.yzw), !vec3<bool>(func_3(false, vec4<u32>(u_input.b.x, arg_0.x, 0u, 60159u)), false, false));
    var var_1 = Struct_1(false, var_0.a.b, var_0.a.c, 1453f);
    let var_2 = var_0.b.xz;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(var_0.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))) >= -517f, var_0.a.b, firstTrailingBit(~abs(select(vec4<u32>(75897u, 0u, var_1.c.x, var_0.a.c.x), var_0.a.c, vec4<bool>(var_0.c.x, false, var_0.a.b.x, true)))), var_1.d);
    var_0 = Struct_2(var_0.a, firstTrailingBit(var_0.b), var_0.a.b);
    return Struct_2(global0[_wgslsmith_index_u32(~(~(~var_0.a.c.x)) & 46400u, 9u)], u_input.c.xzy, select(vec3<bool>(any(var_3.b), true, var_1.a), vec3<bool>(!(!var_0.c.x), (global2.x < -815f) || (var_1.b.x || true), var_0.c.x), !select(var_0.a.b, select(var_0.a.b, var_0.a.b, var_0.c.x), vec3<bool>(var_3.b.x, var_1.b.x, false))));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec4<bool>) -> vec4<u32> {
    let var_0 = func_2(~vec3<u32>(countOneBits(~u_input.b.x), 1u, firstLeadingBit(~1u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -605f))) * var_0.a.d);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-287f, 940f, 1549f) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.x - -970f), global1.x, global2.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-781f, var_1, 564f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-485f, -1329f, 578f)))))));
    let var_3 = select(all(!select(arg_2.zx, var_0.a.b.zx, vec2<bool>(false, false))), true, var_0.c.x) || !all(select(vec4<bool>(arg_2.x, var_0.a.a, arg_1, false), select(vec4<bool>(var_0.c.x, true, arg_1, true), vec4<bool>(var_0.a.b.x, var_0.a.b.x, true, var_0.a.b.x), vec4<bool>(arg_2.x, true, true, true)), select(arg_2, vec4<bool>(var_0.c.x, arg_2.x, true, arg_1), arg_1)));
    return ~firstTrailingBit(_wgslsmith_clamp_vec4_u32(var_0.a.c | vec4<u32>(var_0.a.c.x, u_input.b.x, 0u, u_input.a), countOneBits(vec4<u32>(3430u, u_input.a, 16293u, u_input.a)), ~var_0.a.c)) >> (vec4<u32>(0u, var_0.a.c.x, max(abs(select(41819u, 1u, true)), u_input.b.x), u_input.b.x) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.xz;
    global3 = ~(var_0.x ^ 40721u);
    let var_1 = firstLeadingBit(abs(select(func_1(global1.yx, false, vec4<bool>(true, true, true, true)), vec4<u32>(u_input.b.x, 65669u, 1u, 8893u), func_3(true, vec4<u32>(0u, 1u, 1u, var_0.x)))) ^ _wgslsmith_mult_vec4_u32(min(vec4<u32>(var_0.x, u_input.b.x, 1u, u_input.b.x), vec4<u32>(1u, 1u, 0u, 30742u)), vec4<u32>(1u, 1u, ~u_input.b.x, 55167u)));
    let var_2 = u_input.c.x;
    let var_3 = Struct_1(_wgslsmith_div_f32(-432f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global2.x)))), select(vec3<bool>(true, all(vec3<bool>(true, false, false)), any(vec2<bool>(true, true))), !vec3<bool>(true, -432f <= global1.x, true), true), firstTrailingBit(var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -515f) + global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(func_2(~var_1.wxw).a.d, 1351f, _wgslsmith_f_op_f32(f32(-1f) * -126f), _wgslsmith_f_op_f32(ceil(global1.x))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.d - global2.x), _wgslsmith_div_f32(-587f, var_3.d)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-706f)), 313f, true)), _wgslsmith_f_op_f32(f32(-1f) * -912f), _wgslsmith_f_op_f32(var_3.d + global1.x))));
}


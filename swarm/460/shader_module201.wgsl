struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<i32, 2>;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(-609f, true), Struct_1(-1000f, false), Struct_1(402f, false), Struct_1(-324f, false), Struct_1(-517f, true), Struct_1(1000f, true), Struct_1(269f, true), Struct_1(-1805f, true), Struct_1(-660f, true), Struct_1(-697f, true), Struct_1(178f, true), Struct_1(499f, false), Struct_1(2022f, true), Struct_1(1000f, true), Struct_1(-1076f, true), Struct_1(667f, true), Struct_1(981f, true), Struct_1(-260f, true), Struct_1(-533f, true), Struct_1(-127f, false), Struct_1(-1000f, true), Struct_1(2459f, true), Struct_1(504f, false), Struct_1(370f, true), Struct_1(-1483f, true), Struct_1(1000f, true), Struct_1(-624f, true), Struct_1(984f, false), Struct_1(-106f, true), Struct_1(737f, false), Struct_1(-918f, false));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(19468u, 31u)];
    let var_1 = Struct_1(-1068f, (true || var_0.b) | false);
    let var_2 = reverseBits(-abs(_wgslsmith_mult_vec4_i32(~vec4<i32>(-50372i, u_input.b, u_input.b, -18161i), reverseBits(vec4<i32>(-86913i, global1[_wgslsmith_index_u32(54505u, 2u)], u_input.b, global1[_wgslsmith_index_u32(u_input.a, 2u)])))));
    var var_3 = var_1;
    var_0 = var_1;
    return 4294967295u;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> bool {
    let var_0 = arg_0.b;
    global0 = arg_0.b;
    global1 = array<i32, 2>();
    let var_1 = vec4<u32>(max(~arg_2.a.x, 1u), arg_2.a.x, 1u, _wgslsmith_dot_vec2_u32(arg_2.a.zy, ~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.a.x, 27666u), vec2<u32>(arg_2.a.x, arg_2.a.x))) & arg_2.a.x);
    global0 = true;
    return _wgslsmith_f_op_f32(step(-2308f, 545f)) > arg_0.a;
}

fn func_1() -> i32 {
    global2 = array<Struct_1, 31>();
    let var_0 = global2[_wgslsmith_index_u32(select(u_input.a, 4294967295u >> (_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)), func_2() ^ min(u_input.a, u_input.a)) % 32u), !func_3(global2[_wgslsmith_index_u32(4294967295u, 31u)], u_input.b, Struct_2(vec3<u32>(63676u, 0u, 14329u), -789f, vec3<i32>(global1[_wgslsmith_index_u32(12241u, 2u)], u_input.b, global1[_wgslsmith_index_u32(0u, 2u)]), vec2<f32>(158f, -1766f))) | any(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)))), 31u)];
    global0 = !(all(vec4<bool>(false, true, true, true)) == true);
    global0 = !(!var_0.b) | var_0.b;
    var var_1 = Struct_2(~vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a), true), ~vec2<u32>(12217u, 12436u)), 39139u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), -firstLeadingBit(firstLeadingBit(max(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], -30141i, global1[_wgslsmith_index_u32(u_input.a, 2u)]), vec3<i32>(1i, -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 2u)])))), vec2<f32>(var_0.a, 154f));
    return _wgslsmith_div_i32(u_input.b, min(global1[_wgslsmith_index_u32(0u, 2u)] | -var_1.c.x, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<u32>(~(~(~u_input.a)), firstLeadingBit(u_input.a), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 82931u, 0u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 9910u, u_input.a, 34405u), vec4<u32>(u_input.a, 0u, 58466u, u_input.a))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(242f, -1425f) + 584f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1350f)) - _wgslsmith_f_op_f32(ceil(386f)))))), -vec3<i32>(func_1(), ~(global1[_wgslsmith_index_u32(10158u, 2u)] ^ global1[_wgslsmith_index_u32(27300u, 2u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), max(vec2<i32>(global1[_wgslsmith_index_u32(0u, 2u)], -24707i), vec2<i32>(-21022i, global1[_wgslsmith_index_u32(0u, 2u)])))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(570f * -1259f), _wgslsmith_f_op_f32(f32(-1f) * -1157f)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-261f, -336f) * vec2<f32>(786f, 1000f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-663f, 551f), vec2<f32>(-281f, -573f)))))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(1921f)), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1008f), _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(-var_0.b)))) + 1000f), var_0.d.x);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + _wgslsmith_f_op_f32(var_1.x - -2828f))))), var_0.b, var_1.x);
    var var_3 = firstLeadingBit(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(~(~vec4<i32>(-2147483647i, 29712i, u_input.b, -1i)), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_0.c.x, global1[_wgslsmith_index_u32(0u, 2u)], 27207i), vec4<i32>(global1[_wgslsmith_index_u32(var_0.a.x, 2u)], 5013i, 18144i, u_input.b)))), -min(vec4<i32>(9639i, 2099i, -2147483647i, -1i), vec4<i32>(var_0.c.x, 1i, -1i, global1[_wgslsmith_index_u32(1u, 2u)]))));
    let var_4 = global2[_wgslsmith_index_u32(~(~max(60720u, abs(u_input.a)) << ((~_wgslsmith_mult_u32(u_input.a, 58427u) << (~_wgslsmith_div_u32(var_0.a.x, var_0.a.x) % 32u)) % 32u)), 31u)];
    var_3 = vec4<i32>(-42403i, ~reverseBits(var_3.x >> (20486u % 32u)), firstLeadingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, u_input.b), ~var_0.c.yx) & (-1i | var_0.c.x)), ~global1[_wgslsmith_index_u32(4294967295u, 2u)] ^ firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(9997i, 1i, global1[_wgslsmith_index_u32(u_input.a, 2u)]), vec3<i32>(1i, u_input.b, 4032i)) | global1[_wgslsmith_index_u32(var_0.a.x, 2u)]));
    let var_5 = vec2<bool>(!(false == func_3(global2[_wgslsmith_index_u32(0u, 31u)], _wgslsmith_mult_i32(1i, var_3.x), var_0)), any(vec3<bool>(true, ~var_0.a.x > _wgslsmith_sub_u32(49082u, 25157u), select(any(vec3<bool>(false, var_4.b, var_4.b)), true, any(vec3<bool>(true, false, var_4.b))))));
    var var_6 = min(u_input.a, _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.a.yx, var_0.a.xz), vec2<u32>(4294967295u, u_input.a))), vec2<u32>(~(~6598u), ~_wgslsmith_mult_u32(var_0.a.x, var_0.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x);
}


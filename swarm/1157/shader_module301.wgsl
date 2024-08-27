struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, false, true, true, true, false, false, false, true, true, true, false, false, true, true, false, false, true, false, true, true, false, true, true, false, false, false, false, true);

var<private> global1: array<Struct_1, 2>;

var<private> global2: Struct_3;

var<private> global3: Struct_3;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec4<bool>) -> i32 {
    global3 = Struct_3(_wgslsmith_div_i32(_wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-27744i, 24733i)), -34263i), ~_wgslsmith_div_i32(0i, ~28730i)), vec3<f32>(arg_1.d.a, _wgslsmith_f_op_f32(2070f - global3.b.x), -900f), ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, global3.c), ~vec2<u32>(global2.c, 0u))));
    global3 = Struct_3(u_input.d, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-410f, 760f, -832f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1395f, 296f, global3.b.x))))))), _wgslsmith_clamp_u32(u_input.b, ~(_wgslsmith_div_u32(84352u, global3.c) | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(u_input.a, u_input.a))), ~global3.c));
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(1f))), _wgslsmith_add_vec2_i32(-min(arg_1.c.yz, u_input.c), -countOneBits(u_input.c)), ~(~_wgslsmith_mult_vec3_i32(vec3<i32>(-35321i, global3.a, u_input.c.x) | arg_1.c, firstLeadingBit(arg_1.c))), arg_1.d, _wgslsmith_sub_i32(26936i, -global2.a));
    var var_1 = global3.c ^ _wgslsmith_add_u32(abs(12799u & (u_input.a >> (1u % 32u))), reverseBits(~min(u_input.a, 45978u)));
    let var_2 = arg_1;
    return -arg_1.b.x ^ global2.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = countOneBits(abs(-countOneBits(max(vec4<i32>(2147483647i, u_input.c.x, -22043i, 49914i), vec4<i32>(global3.a, -2147483647i, -1i, global3.a)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.b.x)) * _wgslsmith_f_op_f32(sign(-224f)))), var_0.yw, vec3<i32>(~func_3(-672f, Struct_2(Struct_1(global2.b.x), vec2<i32>(-19262i, global3.a), var_0.yzx, arg_0, -2147483647i), vec4<bool>(true, global0[_wgslsmith_index_u32(4496u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], false)), firstLeadingBit(abs(-global3.a)), ~var_0.x), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -775f)))))), ~u_input.c.x);
    let var_2 = _wgslsmith_f_op_f32(global3.b.x - _wgslsmith_f_op_f32(global3.b.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2360f))), global2.b.x)));
    var var_3 = firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(var_0, -var_0), min(-vec4<i32>(global3.a, global3.a, var_1.c.x, u_input.c.x), vec4<i32>(var_0.x, var_1.b.x, 2147483647i, -global3.a))));
    var var_4 = _wgslsmith_mult_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 24797i), -vec2<i32>(-1i, 1i), _wgslsmith_mod_vec2_i32(u_input.c, vec2<i32>(0i, var_0.x)))) << (arg_1.yy % vec2<u32>(32u)), -(~(-vec2<i32>(-1i, 1i) & var_1.c.yy)));
    return Struct_3(~(~(~var_0.x)), _wgslsmith_f_op_vec3_f32(global2.b + global2.b), firstTrailingBit(global2.c));
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(~(~countOneBits(global2.c)) | arg_0.x, 2u)];
    var var_1 = func_2(global1[_wgslsmith_index_u32(~global2.c, 2u)], arg_0);
    global0 = array<bool, 29>();
    global3 = Struct_3(var_1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-955f + 337f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-618f - -1000f) - _wgslsmith_f_op_f32(-global3.b.x)), 2464f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, var_1.b.x, 2159f) * global2.b), _wgslsmith_f_op_vec3_f32(step(global3.b, vec3<f32>(global3.b.x, -782f, -482f))), vec3<bool>(global0[_wgslsmith_index_u32(var_1.c, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(global2.c, 29u)]))) * vec3<f32>(_wgslsmith_f_op_f32(step(global2.b.x, 624f)), _wgslsmith_f_op_f32(step(564f, global3.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -278f)))), _wgslsmith_div_u32(var_1.c, firstLeadingBit(countOneBits(arg_0.x)) & ((global2.c ^ 4294967295u) ^ global3.c)));
    var var_2 = func_2(Struct_1(global3.b.x), vec3<u32>(~abs(_wgslsmith_add_u32(4294967295u, arg_0.x)), 806u, arg_0.x));
    return 1871f;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: bool) -> Struct_3 {
    global1 = array<Struct_1, 2>();
    global0 = array<bool, 29>();
    let var_0 = _wgslsmith_div_u32(abs(u_input.a), _wgslsmith_dot_vec4_u32(reverseBits(countOneBits(vec4<u32>(1u, 23684u, 14233u, global3.c))), _wgslsmith_clamp_vec4_u32(abs(countOneBits(vec4<u32>(0u, 1u, 4294967295u, global2.c))), vec4<u32>(0u, 4294967295u, global2.c, 16462u) | vec4<u32>(global3.c, global3.c, global3.c, u_input.b), abs(min(vec4<u32>(u_input.a, global2.c, 64807u, u_input.a), vec4<u32>(u_input.b, 1u, global2.c, 1u))))));
    global3 = func_2(global1[_wgslsmith_index_u32(firstTrailingBit(func_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~3309u, 4294967295u), 2u)], ~(~vec3<u32>(4294967295u, global2.c, 1u))).c), 2u)], _wgslsmith_sub_vec3_u32(vec3<u32>(~16465u, 0u, global2.c), vec3<u32>(global3.c, ~u_input.a, ~47701u)));
    let var_1 = max(~vec4<i32>(-global3.a, -(u_input.e.x >> (38291u % 32u)), abs(-u_input.e.x), (2064i ^ u_input.c.x) << (_wgslsmith_div_u32(6239u, u_input.b) % 32u)), select(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, global2.a), firstLeadingBit(1i), 0i, -35988i), -vec4<i32>(-1i, 24132i, global3.a, global3.a), all(arg_0)));
    return Struct_3(_wgslsmith_add_i32(func_2(Struct_1(global2.b.x), _wgslsmith_add_vec3_u32(~vec3<u32>(54057u, var_0, 72095u), countOneBits(vec3<u32>(global2.c, global3.c, u_input.a)))).a, ~var_1.x), global2.b, min(48832u, (global3.c << (firstTrailingBit(4911u) % 32u)) ^ 40672u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(!select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], false, true, false), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(global2.c, 29u)]), true), vec4<bool>(true, true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(global2.c, 29u)], global0[_wgslsmith_index_u32(global2.c, 29u)], global0[_wgslsmith_index_u32(global2.c, 29u)], global0[_wgslsmith_index_u32(0u, 29u)])), select(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(16663u, 29u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(global3.c, 29u)], global0[_wgslsmith_index_u32(0u, 29u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(3697u, 29u)], true, global0[_wgslsmith_index_u32(0u, 29u)])), select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(5899u, 29u)], global0[_wgslsmith_index_u32(global2.c, 29u)], false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(global0[_wgslsmith_index_u32(75245u, 29u)], global0[_wgslsmith_index_u32(u_input.b, 29u)], true, global0[_wgslsmith_index_u32(14495u, 29u)]), vec4<bool>(global0[_wgslsmith_index_u32(global2.c, 29u)], global0[_wgslsmith_index_u32(26095u, 29u)], global0[_wgslsmith_index_u32(24326u, 29u)], true), vec4<bool>(global0[_wgslsmith_index_u32(global3.c, 29u)], true, false, global0[_wgslsmith_index_u32(4294967295u, 29u)])), !vec4<bool>(global0[_wgslsmith_index_u32(global3.c, 29u)], global0[_wgslsmith_index_u32(global3.c, 29u)], false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~(~vec3<u32>(global3.c, 55935u, 79666u))))), !(any(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(global3.c, 29u)], global0[_wgslsmith_index_u32(4088u, 29u)])) && global0[_wgslsmith_index_u32(global3.c, 29u)]));
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(~max(u_input.a, 0u) >> (1u % 32u), 2u)], ~u_input.e, vec3<i32>(global2.a, global2.a, ~(u_input.c.x >> (~global3.c % 32u))), global1[_wgslsmith_index_u32(0u, 2u)], firstTrailingBit(u_input.e.x));
    let var_1 = any(!vec2<bool>(global0[_wgslsmith_index_u32(global2.c ^ 4294967295u, 29u)], true));
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d.a))))), 434f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(vec4<bool>(var_1, true, var_1, var_1), global3.b.x, var_1).b.x))), _wgslsmith_f_op_vec3_f32(abs(func_2(Struct_1(_wgslsmith_f_op_f32(max(global3.b.x, -234f))), ~(~vec3<u32>(0u, 5613u, global2.c))).b)));
    global3 = Struct_3(global2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-128f, -1045f, 886f)) - global2.b), 4294967295u);
    var var_3 = vec4<i32>(abs(global2.a & global2.a), 0i, -23721i, ~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 11204i), abs(vec2<i32>(global3.a, global3.a)), u_input.e), vec2<i32>(var_0.b.x, global3.a)));
    let var_4 = vec2<u32>(global2.c, global2.c | global3.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global2.c, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(943f))), global2.c, ~4294967295u);
}


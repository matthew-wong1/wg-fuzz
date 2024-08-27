struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<u32, 10> = array<u32, 10>(1u, 1u, 17999u, 28785u, 82504u, 70329u, 38352u, 1u, 7967u, 75528u);

var<private> global2: array<Struct_1, 15>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> vec3<f32> {
    var var_0 = 1i;
    let var_1 = Struct_2(-106f, vec4<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.b.x, 22884i), u_input.b), u_input.b), -1i, reverseBits(firstTrailingBit(0i)), 85570i));
    global1 = array<u32, 10>();
    let var_2 = vec4<u32>(global1[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(26271u, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~u_input.a, 10u)], 10u)])), 10u)], firstLeadingBit(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], u_input.a, 34793u, 4294967295u), vec4<u32>(4294967295u, 18446u, u_input.a, 1u)))), global1[_wgslsmith_index_u32(~u_input.a << (76862u % 32u), 10u)], ~(~(~0u)));
    var_0 = 40360i;
    return vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1413f)) - _wgslsmith_f_op_f32(ceil(-431f)))), 178f);
}

fn func_3(arg_0: vec3<f32>) -> Struct_1 {
    global1 = array<u32, 10>();
    global0 = !vec4<bool>(global0.x, false, !global0.x, true);
    var var_0 = arg_0.x;
    global2 = array<Struct_1, 15>();
    let var_1 = Struct_3(u_input.b.yyz, global0.x);
    return Struct_1(abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_1.a << (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 10u)], 10u)], 0u, 4294967295u) % vec3<u32>(32u)), -vec3<i32>(-2147483647i, -2147483647i, 10625i)), -1i)));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1616f, 722f, 722f))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(-322f + -656f))) * _wgslsmith_f_op_vec3_f32(func_2())));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b.xyw, max(u_input.b.zyw, min(max(u_input.b.yww, vec3<i32>(0i, -24762i, arg_2)), arg_0.a))), _wgslsmith_div_i32(var_0.a, firstLeadingBit(arg_3.a & arg_2) << (~global1[_wgslsmith_index_u32(103u, 10u)] % 32u)), abs(~(24012i ^ var_0.a)) << (global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(0u, global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)])) >> (~(~46834u) % 32u), 10u)] % 32u));
    let var_2 = _wgslsmith_add_vec3_i32(~arg_0.a, u_input.b.wwx);
    let var_3 = countOneBits((~_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(55353u, 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)], 0u, 1u), vec4<u32>(global1[_wgslsmith_index_u32(1u, 10u)], u_input.a, u_input.a, 1u)) & ~vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 10u)], global1[_wgslsmith_index_u32(64979u, 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13908u, 10u)], 10u)], 4294967295u)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 10u)], 10u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 1994u, 19163u), vec4<u32>(16910u, 4294967295u, 1u, 0u)), firstLeadingBit(u_input.a), u_input.a), max(vec4<u32>(0u, 20897u, global1[_wgslsmith_index_u32(57597u, 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 10u)], 10u)]), ~vec4<u32>(u_input.a, u_input.a, 1u, 76173u))) % vec4<u32>(32u)));
    global1 = array<u32, 10>();
    return Struct_2(arg_1, _wgslsmith_add_vec4_i32(vec4<i32>(-6778i << (_wgslsmith_sub_u32(u_input.a, 4294967295u) % 32u), reverseBits(var_0.a) >> (global1[_wgslsmith_index_u32(22536u >> (global1[_wgslsmith_index_u32(u_input.a, 10u)] % 32u), 10u)] % 32u), var_2.x ^ 2147483647i, _wgslsmith_mod_i32(i32(-1i) * -47500i, -var_2.x)), (select(u_input.b, vec4<i32>(u_input.b.x, var_1.x, arg_0.a.x, 32310i), vec4<bool>(false, true, true, global0.x)) ^ (u_input.b << (var_3 % vec4<u32>(32u)))) >> (~_wgslsmith_sub_vec4_u32(var_3, vec4<u32>(1u, 54827u, 0u, 425u)) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec4<bool> {
    let var_0 = !(!(!vec4<bool>(all(vec4<bool>(true, global0.x, global0.x, true)), all(vec2<bool>(global0.x, true)), true, all(vec2<bool>(false, false)))));
    global2 = array<Struct_1, 15>();
    global0 = !(!(!var_0));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 748f));
    let var_2 = vec4<u32>(4294967295u, countOneBits(u_input.a), 22599u, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~u_input.a), 10u)], 10u)] ^ ~min(1u, u_input.a), 138495u, ~(~0u)));
    return select(!var_0, var_0, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(select(vec4<bool>(true, (global0.x || false) | (global0.x && global0.x), global0.x && true, (global0.x | global0.x) || true), vec4<bool>(true, global0.x, !select(global0.x, true, global0.x), !global0.x), func_4(func_1(Struct_3(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1871f), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), global2[_wgslsmith_index_u32(1u, 15u)]), u_input.b.x >> (global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)] % 32u))), !select(func_4(func_1(Struct_3(vec3<i32>(u_input.b.x, u_input.b.x, 17424i), true), 1149f, u_input.b.x, Struct_1(-1i)), -1i), vec4<bool>(select(true, true, global0.x), global0.x, global0.x, !global0.x), global0.x), !(!(!func_4(Struct_2(-1000f, u_input.b), 0i))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1131f * -1391f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1800f - -754f))));
    let var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(trunc(var_0))))), _wgslsmith_f_op_f32(ceil(var_0))), select(-vec4<i32>(~(-44570i), -2147483647i, u_input.b.x ^ 19282i, ~(-1i)), u_input.b, (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 47922u, 0u, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 10u)], 23166u, 4294967295u, 0u)) & 1u) < _wgslsmith_mod_u32(u_input.a, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 32395u, 21145u))));
    global1 = array<u32, 10>();
    let var_2 = Struct_2(-1583f, -u_input.b);
    var var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-575f, 126f, 1131f) + vec3<f32>(var_0, -1000f, var_1.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 251f, var_0)))))));
}


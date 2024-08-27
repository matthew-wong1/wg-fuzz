struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, false), vec2<i32>(1i, 11986i), -338f, Struct_1(-1167f, -12762i));

var<private> global1: f32 = -1175f;

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(-1209f, -27213i), Struct_1(-1652f, -1i), Struct_1(2187f, 2147483647i), Struct_1(1994f, -29389i), Struct_1(1193f, 43279i), Struct_1(294f, 1i), Struct_1(-156f, 2147483647i), Struct_1(1104f, -64709i), Struct_1(1637f, -1i), Struct_1(-864f, -41526i), Struct_1(386f, -22890i), Struct_1(-391f, 0i), Struct_1(125f, i32(-2147483648)), Struct_1(-563f, -37544i), Struct_1(-1000f, -9325i), Struct_1(1149f, -19565i));

var<private> global4: array<u32, 17> = array<u32, 17>(2581u, 4294967295u, 0u, 0u, 74674u, 1u, 23856u, 0u, 4294967295u, 4294967295u, 72822u, 74182u, 27735u, 33381u, 83907u, 28789u, 6543u);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> vec2<bool> {
    let var_0 = vec3<u32>(abs(global4[_wgslsmith_index_u32(1u, 17u)]), _wgslsmith_mult_u32(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(55989u, 17u)], max(u_input.e.x, u_input.e.x)) >> ((global4[_wgslsmith_index_u32(~32086u, 17u)] ^ 0u) % 32u), 0u), _wgslsmith_mod_u32(1u, 0u ^ arg_2));
    let var_1 = false;
    global1 = -1721f;
    global0 = Struct_2(global2.a, abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.b.x, _wgslsmith_mod_i32(global2.d.b, -29545i)), global0.b, u_input.c.xw)), global0.d.a, Struct_1(743f, _wgslsmith_add_i32((u_input.d | global0.b.x) | ~u_input.b, global0.b.x)));
    var var_2 = true;
    return !(!vec2<bool>(arg_3.x, global0.a.x));
}

fn func_2(arg_0: u32) -> Struct_2 {
    return Struct_2(!func_3(Struct_1(global2.c, ~14922i), Struct_1(1090f, 1i), ~min(23452u, u_input.e.x), select(!vec4<bool>(false, global2.a.x, true, true), vec4<bool>(global2.a.x, true, global2.a.x, global0.a.x), !vec4<bool>(global2.a.x, global0.a.x, false, global0.a.x))), vec2<i32>(~(-1i), -1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global0.c, 1048f, any(vec3<bool>(global0.a.x, global0.a.x, true)))))), 1528f)), Struct_1(global0.d.a, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~u_input.c, u_input.c), _wgslsmith_add_vec4_i32(u_input.c, firstTrailingBit(u_input.c)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(reverseBits(~15793u) | _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e.x, 73429u, 0u), ~vec3<u32>(u_input.e.x, 1u, 84851u)), 30542u), 56047u);
    var var_1 = func_2(~(firstTrailingBit(var_0 | 0u) | 4294967295u));
    var var_2 = countOneBits(~vec3<u32>(global4[_wgslsmith_index_u32(1u, 17u)] << (_wgslsmith_mod_u32(4294967295u, global4[_wgslsmith_index_u32(var_0, 17u)]) % 32u), global4[_wgslsmith_index_u32(u_input.a, 17u)], reverseBits(~var_0)));
    var_2 = ~(~firstLeadingBit(select(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 70767u, var_2.x), vec3<u32>(var_2.x, 4294967295u, var_0)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.e.x, 0u, 47270u), vec3<u32>(0u, 0u, 19955u)), vec3<bool>(arg_1.a.x, true, false))));
    var var_3 = global3[_wgslsmith_index_u32(var_2.x, 16u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.c)) - -1000f);
}

fn func_1() -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(684f * _wgslsmith_f_op_f32(trunc(global0.c))), -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec3<bool>(false, all(vec3<bool>(true, global0.a.x, true)), true), func_2(~global4[_wgslsmith_index_u32(85946u, 17u)]))) * _wgslsmith_f_op_f32(trunc(global2.d.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1295f * global0.d.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(981f, _wgslsmith_div_f32(global2.d.a, _wgslsmith_f_op_f32(min(-399f, 763f))), func_2(1u).a.x)) + global2.d.a));
    var var_1 = !global2.a;
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-231f * _wgslsmith_f_op_f32(max(global0.c, 433f))))))));
    var_3 = 716f;
    return abs(reverseBits(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 17u)], 17u)], 1u), vec4<u32>(1u, global4[_wgslsmith_index_u32(20552u, 17u)], global4[_wgslsmith_index_u32(65043u, 17u)], 1u)), vec4<u32>(33082u, 32928u, 0u, 53005u) ^ vec4<u32>(u_input.a, u_input.e.x, u_input.e.x, 1u))) << ((vec4<u32>(u_input.e.x, 0u << (u_input.e.x % 32u), func_1(), ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.e.x, 17u)], 17u)], 17u)]) & _wgslsmith_mult_vec4_u32(~vec4<u32>(47617u, u_input.e.x, global4[_wgslsmith_index_u32(21701u, 17u)], 109176u), ~vec4<u32>(global4[_wgslsmith_index_u32(1u, 17u)], u_input.a, 68337u, 67572u))) % vec4<u32>(32u))) >> (vec4<u32>(u_input.e.x, func_1(), 86363u, 104044u) % vec4<u32>(32u));
    let var_1 = _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(~39129u, _wgslsmith_dot_vec4_u32(var_0, var_0)), _wgslsmith_add_vec2_u32(vec2<u32>(20240u, 0u), u_input.e))) ^ ~(~var_0.x);
    let var_2 = Struct_2(!global2.a, select(abs(min(global0.b, global0.b)), vec2<i32>(3505i, i32(-1i) * -43536i), all(!vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x))), -210f, func_2(_wgslsmith_add_u32(~1u, ~_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.e.x, 17u)], 17u)], 28488u))).d);
    let var_3 = 7322u;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c.wxz, abs(vec4<u32>(var_3, ~global4[_wgslsmith_index_u32(var_0.x ^ var_1, 17u)], u_input.a, ~4294967295u)), var_0.zyz);
}


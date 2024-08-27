struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<u32>(7139u, 1u, 4294967295u), 0i), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), 0i), Struct_1(vec3<u32>(0u, 4294967295u, 3859u), -1i), Struct_1(vec3<u32>(1u, 17839u, 0u), 26547i), Struct_1(vec3<u32>(41901u, 0u, 40781u), 44399i), Struct_1(vec3<u32>(0u, 51919u, 52310u), -46697i), Struct_1(vec3<u32>(0u, 4294967295u, 15907u), 2147483647i));

var<private> global2: Struct_1 = Struct_1(vec3<u32>(33336u, 0u, 0u), 2147483647i);

var<private> global3: vec3<i32>;

var<private> global4: Struct_1 = Struct_1(vec3<u32>(48651u, 0u, 5878u), 6983i);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 7u)];
    let var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(min(_wgslsmith_div_u32(0u, var_0.a.x & 4306u), global2.a.x >> (7687u % 32u)), global2.a.x)), 7u)];
    global4 = global1[_wgslsmith_index_u32(12494u, 7u)];
    var var_2 = 1277f;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -168f);
    return var_0.a.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = -682f;
    let var_1 = func_2() << (87091u % 32u);
    return global1[_wgslsmith_index_u32(global2.a.x, 7u)];
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 7>();
    global0 = vec3<i32>(_wgslsmith_div_i32(~global0.x, ~21647i), -2147483647i, global2.b);
    let var_0 = vec2<bool>(all(select(vec2<bool>(40969i == u_input.b, false), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), all(vec3<bool>(true, true, false))))), false);
    var var_1 = !select(vec3<bool>(true, true, true), !(!vec3<bool>(var_0.x, false, true)), var_0.x);
    var var_2 = global1[_wgslsmith_index_u32(min(1u, firstLeadingBit(4294967295u)), 7u)];
    return Struct_1(vec3<u32>(4294967295u & ~(arg_1 & 130348u), ~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(var_2.a.x, global2.a.x, u_input.a.x)), min(var_2.a, u_input.a.zyy)), reverseBits(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c.x, 64391u), abs(global4.a.x)))), _wgslsmith_mult_i32(~1i << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 18357u, 23082u, arg_3.a.x), u_input.a), _wgslsmith_mod_vec4_u32(u_input.a, u_input.c)) % 32u), ~global4.b));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = ~global2.a;
    global4 = arg_0;
    let var_1 = true;
    let var_2 = 0i;
    let var_3 = firstLeadingBit(func_3(vec2<f32>(308f, _wgslsmith_f_op_f32(min(-979f, _wgslsmith_f_op_f32(-1798f * -730f)))), ~(~0u), min(-vec3<i32>(-36167i, arg_0.b, u_input.b) >> (abs(vec3<u32>(29274u, u_input.c.x, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_div_i32(arg_3.b, global2.b), reverseBits(var_2), _wgslsmith_dot_vec2_i32(global3.xx, global0.zy))), Struct_1(~vec3<u32>(global2.a.x, 30938u, global4.a.x), ~reverseBits(-10120i))).b);
    return vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(select(arg_0.b, var_2, var_1), countOneBits(arg_0.b), 1i, global4.b), vec4<i32>(u_input.b, -3537i, global2.b, -2147483647i) >> (vec4<u32>(arg_0.a.x, arg_2.a.x, 0u, 54619u) % vec4<u32>(32u))), _wgslsmith_mod_i32(_wgslsmith_add_i32(max(arg_2.b, arg_0.b), -global4.b), -23942i) ^ 1i, i32(-1i) * -arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -(vec3<i32>(-1i) * -func_4(global1[_wgslsmith_index_u32(global2.a.x, 7u)], _wgslsmith_mod_vec3_u32(vec3<u32>(global2.a.x, 0u, 53262u), global4.a), func_1(vec3<i32>(0i, global3.x, -2147483647i), vec2<f32>(1000f, -126f)), func_3(vec2<f32>(-695f, 1000f), 1u, vec3<i32>(global4.b, 2147483647i, u_input.b), Struct_1(global4.a, u_input.b))));
    var var_0 = vec3<i32>(-17795i, u_input.b, global4.b);
    var_0 = vec3<i32>(~var_0.x, _wgslsmith_mult_i32(0i, ~_wgslsmith_dot_vec2_i32(-vec2<i32>(global4.b, -73663i), _wgslsmith_sub_vec2_i32(vec2<i32>(-18453i, global4.b), global0.yz))), 2463i);
    let var_1 = func_1(~vec3<i32>(global4.b, -_wgslsmith_clamp_i32(var_0.x, global2.b, global3.x), 19955i), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(376f, -976f)))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1076f, 1161f), vec2<f32>(-1744f, 2121f)))))));
    var var_2 = Struct_1(reverseBits(~global2.a), -45310i);
    var var_3 = -select(select(vec4<i32>(var_0.x << (global2.a.x % 32u), -14813i, global2.b, abs(var_1.b)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(1933i, global0.x, global4.b, 50851i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, -49364i, -1i, -30678i), vec4<i32>(global4.b, global2.b, 13852i, global2.b)), vec4<i32>(global4.b, global4.b, var_1.b, var_0.x) >> (vec4<u32>(global4.a.x, 1u, global4.a.x, 10746u) % vec4<u32>(32u))), vec4<bool>(false, true, true, true)), vec4<i32>(var_0.x, func_3(vec2<f32>(384f, -429f), 84840u, vec3<i32>(var_0.x, 42333i, -61860i), Struct_1(var_1.a, var_2.b)).b, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 28379i), vec2<i32>(var_2.b, 33639i)), func_1(vec3<i32>(global3.x, 2147483647i, global2.b), vec2<f32>(1692f, 1702f)).b) << (vec4<u32>(min(global4.a.x, 4294967295u), ~u_input.c.x, 52850u, global2.a.x) % vec4<u32>(32u)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), all(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false)));
    global0 = _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(~(~(~var_3.wxw)), abs(var_3.wwx)), vec3<i32>(-1i) * -vec3<i32>(u_input.b, countOneBits(-2147483647i), global0.x << (var_2.a.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(max(reverseBits(_wgslsmith_sub_vec4_i32(select(vec4<i32>(var_0.x, -2147483647i, var_1.b, 29747i), vec4<i32>(u_input.b, global3.x, 2147483647i, 2147483647i), vec4<bool>(true, true, false, true)), vec4<i32>(global0.x, global4.b, 2147483647i, 1i))), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 2147483647i, 1i, u_input.b), vec4<i32>(74553i, global3.x, -2147483647i, global0.x)), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(global3.x, 54505i, u_input.b, var_3.x)), vec4<i32>(global4.b, 31475i, u_input.b, global2.b)))));
}


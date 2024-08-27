struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 14>;

var<private> global1: array<i32, 1>;

var<private> global2: vec4<f32> = vec4<f32>(-303f, -1961f, -264f, 111f);

var<private> global3: Struct_1 = Struct_1(vec3<f32>(-786f, 794f, 242f), vec4<i32>(3094i, -52204i, i32(-2147483648), 22120i), vec4<i32>(1i, -10489i, 2147483647i, 8711i), vec4<u32>(46644u, 55469u, 30843u, 3361u));

var<private> global4: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(min(global3.a, arg_1.a)), _wgslsmith_mult_vec4_i32(countOneBits(~vec4<i32>(arg_2.c.x, 0i, -7209i, 54478i)), arg_1.c), global3.b, ~_wgslsmith_clamp_vec4_u32(arg_2.d, vec4<u32>(_wgslsmith_div_u32(62303u, global3.d.x), arg_0, 4294967295u, ~arg_1.d.x), global3.d));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_2.a.x, _wgslsmith_f_op_f32(-global3.a.x))))), 2773f, arg_2.a.x), reverseBits(~arg_1.b), _wgslsmith_div_vec4_i32(abs(_wgslsmith_sub_vec4_i32(~arg_1.b, var_0.c)), vec4<i32>(firstTrailingBit(u_input.b), -_wgslsmith_dot_vec3_i32(arg_2.b.zyw, vec3<i32>(arg_3.b.x, arg_2.b.x, 37055i)), ~var_0.c.x, abs(14766i >> (arg_3.d.x % 32u)))), vec4<u32>(_wgslsmith_mult_u32(reverseBits(arg_3.d.x), abs(var_0.d.x)), ~(~(~0u)), ~(~_wgslsmith_div_u32(90214u, arg_0)), 0u));
    global3 = arg_3;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, var_1.a.x, -923f)))) - vec3<f32>(-1113f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x * var_1.a.x)), global3.a.x)), abs(arg_1.c), select(_wgslsmith_add_vec4_i32(~arg_3.b, -_wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1747u, 1u)], arg_1.c.x, global3.b.x, -1501i), arg_1.b)), -countOneBits(vec4<i32>(var_1.c.x, -49920i, 493i, 20571i)), any(vec4<bool>(true, true, true, true))), vec4<u32>(~var_1.d.x << (~(global3.d.x & 4448u) % 32u), ~(~(~var_0.d.x)), 71297u, _wgslsmith_mult_u32(reverseBits(arg_1.d.x), 4294967295u)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(global3.a)), select(var_1.b, vec4<i32>(var_1.c.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 48853i, -11588i), vec3<i32>(arg_2.c.x, 0i, 7733i)), -8821i), arg_1.b.x, -23016i), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), all(vec4<bool>(false, true, false, true)))), max(global3.b, -arg_3.b >> (firstLeadingBit(vec4<u32>(var_0.d.x, var_0.d.x, arg_0, var_0.d.x)) % vec4<u32>(32u))), arg_2.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.a.x))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -442f)))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + 2617f), global3.a.x, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(func_3(0u ^ global3.d.x, Struct_1(vec3<f32>(global2.x, arg_0.x, 1202f), global3.b, global3.b, vec4<u32>(64694u, global3.d.x, global3.d.x, global3.d.x)), Struct_1(global3.a, vec4<i32>(global3.c.x, 8545i, -17474i, -1i), global3.b, vec4<u32>(4294967295u, 2439u, 4294967295u, 21579u)), Struct_1(vec3<f32>(global2.x, arg_0.x, -397f), vec4<i32>(global3.b.x, global1[_wgslsmith_index_u32(global3.d.x, 1u)], u_input.a.x, global1[_wgslsmith_index_u32(global3.d.x, 1u)]), global3.c, global3.d))))), vec4<i32>(827i, ~(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) | _wgslsmith_dot_vec2_i32(global3.b.wy, vec2<i32>(-15681i, global3.b.x))), global3.b.x, ~2147483647i << (global3.d.x % 32u)), _wgslsmith_clamp_vec4_i32(global3.b, ~(abs(vec4<i32>(u_input.a.x, 2147483647i, 0i, -2147483647i)) & (vec4<i32>(global3.c.x, global1[_wgslsmith_index_u32(global3.d.x, 1u)], u_input.b, global3.c.x) << (global3.d % vec4<u32>(32u)))), global3.b), abs(~(global3.d & vec4<u32>(4294967295u, global3.d.x, global3.d.x, global3.d.x))) & global3.d);
    var var_0 = Struct_1(vec3<f32>(-308f, -1970f, _wgslsmith_f_op_f32(arg_0.x - global2.x)), min(-vec4<i32>(_wgslsmith_dot_vec2_i32(global3.c.wx, vec2<i32>(70817i, -1i)), 2147483647i | global3.b.x, 1i, global1[_wgslsmith_index_u32(~global3.d.x, 1u)]), min(-(global3.b & global3.c), _wgslsmith_div_vec4_i32(-vec4<i32>(17717i, 2147483647i, -1i, u_input.a.x), ~vec4<i32>(global3.c.x, -39858i, global1[_wgslsmith_index_u32(global3.d.x, 1u)], 38311i)))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(global3.b.x), _wgslsmith_clamp_i32(-1i, global3.b.x, 45880i)), -firstLeadingBit(vec2<i32>(-1i, 2147483647i))), -_wgslsmith_dot_vec2_i32(vec2<i32>(global3.c.x, 58046i), min(vec2<i32>(global3.c.x, 2147483647i), vec2<i32>(-52898i, 29525i))), -u_input.a.x >> ((~27508u & global3.d.x) % 32u), countOneBits(_wgslsmith_mult_i32(abs(-22274i), 1i))), vec4<u32>(7087u, 4294967295u, 1u, global3.d.x));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global2.wwy, vec3<f32>(global2.x, var_0.a.x, 285f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-710f, 698f, arg_0.x) * vec3<f32>(-1323f, -1000f, arg_0.x)))), abs((_wgslsmith_sub_vec4_i32(global3.b, global3.b) >> (vec4<u32>(var_0.d.x, 77472u, 108463u, global3.d.x) % vec4<u32>(32u))) & abs(global3.b)), ~var_0.c, _wgslsmith_div_vec4_u32(global3.d, ~(~(~vec4<u32>(var_0.d.x, global3.d.x, var_0.d.x, 4066u)))));
    global0 = array<vec2<f32>, 14>();
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global3.a, var_1.a, true)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, var_0.a.x, -1000f), vec3<f32>(1577f, var_1.a.x, arg_0.x)))), _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(-1i, u_input.b, 0i, 0i) & vec4<i32>(2147483647i, 2147483647i, var_1.c.x, global3.c.x)), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b, u_input.a.x), -33071i & global1[_wgslsmith_index_u32(global3.d.x, 1u)]), (global1[_wgslsmith_index_u32(28670u, 1u)] & global1[_wgslsmith_index_u32(0u, 1u)]) & ~global3.c.x, 1i, 1i)), -select(vec4<i32>(-18755i, reverseBits(0i), 2719i, _wgslsmith_clamp_i32(var_0.b.x, -36871i, -22140i)), select(vec4<i32>(19388i, var_0.c.x, 0i, -27844i) >> (var_0.d % vec4<u32>(32u)), vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(var_0.d.x, 1u)], -2147483647i, -1i), all(vec4<bool>(true, true, false, true))), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), false)), reverseBits(vec4<u32>(global3.d.x, _wgslsmith_dot_vec2_u32(var_0.d.yx, vec2<u32>(var_0.d.x, 1u)), min(global3.d.x, var_0.d.x), ~abs(global3.d.x))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(25403u, Struct_1(global3.a, vec4<i32>(-1i, u_input.a.x, 13106i, u_input.a.x), var_0.c, vec4<u32>(var_1.d.x, var_0.d.x, var_0.d.x, var_1.d.x)), Struct_1(vec3<f32>(-592f, -385f, var_0.a.x), global3.b, global3.c, vec4<u32>(global3.d.x, 4294967295u, var_0.d.x, var_0.d.x)), Struct_1(var_1.a, var_0.c, var_0.c, vec4<u32>(global3.d.x, var_1.d.x, 16328u, var_0.d.x)))), arg_0.x, 1064f)) * vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), var_1.a.x)))), vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(1u, 1u)], ~global1[_wgslsmith_index_u32(global3.d.x, 1u)], -8945i), global3.c, _wgslsmith_sub_vec4_u32(~(~(global3.d << (global3.d % vec4<u32>(32u)))), vec4<u32>(var_0.d.x, global3.d.x, reverseBits(var_1.d.x) << ((1u >> (var_0.d.x % 32u)) % 32u), var_1.d.x)));
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<f32>, 14>();
    var var_0 = func_2(global0[_wgslsmith_index_u32(1u, 14u)]);
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global3.a)), _wgslsmith_f_op_vec3_f32(global2.yyx + vec3<f32>(181f, 1000f, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global3.a.x - var_0.a.x), 1302f, global3.a.x) + _wgslsmith_div_vec3_f32(vec3<f32>(835f, 285f, 530f), var_0.a))), vec4<i32>(u_input.b, abs(-(u_input.a.x ^ 5933i)), 26159i, _wgslsmith_dot_vec3_i32(~(~var_0.b.zzw), u_input.a)), global3.c, ~(~select(vec4<u32>(var_0.d.x, global3.d.x, global3.d.x, var_0.d.x) ^ vec4<u32>(global3.d.x, 0u, 4294967295u, 1u), global3.d | vec4<u32>(4294967295u, 76396u, 6656u, global3.d.x), any(vec4<bool>(false, true, true, false)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), 466f, var_1.a.x))), func_2(global2.xw).c, abs(max(var_1.b, min(vec4<i32>(var_0.c.x, -7660i, u_input.b, global1[_wgslsmith_index_u32(1u, 1u)]), global3.b) & -var_0.b)), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.d.x, 4294967295u, 1u, var_0.d.x), ~global3.d));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a + vec3<f32>(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x))))), -(var_0.b | var_2.b) | global3.c, select(var_0.c, vec4<i32>(-var_0.c.x, 2147483647i, select(countOneBits(56596i), countOneBits(1i), true), 0i), true || !any(vec2<bool>(true, false))), _wgslsmith_add_vec4_u32(min(var_0.d, var_0.d) << (vec4<u32>(var_1.d.x, 11939u, var_1.d.x, var_1.d.x) % vec4<u32>(32u)), vec4<u32>(4294967295u, func_2(vec2<f32>(1000f, global3.a.x)).d.x, _wgslsmith_mod_u32(92527u, 38159u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.d.x, 1u, 4294967295u), var_2.d.zzx))) << (global3.d % vec4<u32>(32u)));
    return Struct_1(_wgslsmith_div_vec3_f32(var_1.a, _wgslsmith_f_op_vec3_f32(abs(var_0.a))), var_3.b | max(reverseBits(vec4<i32>(var_0.b.x, var_2.b.x, 2147483647i, 1i)), min(_wgslsmith_mod_vec4_i32(var_0.c, var_3.c), ~var_2.c)), firstTrailingBit(vec4<i32>(min(1i, u_input.a.x), -44774i, u_input.b, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 0u, 0u), 1u)]) >> (firstTrailingBit(~var_0.d) % vec4<u32>(32u))), ~(~min(~global3.d, ~vec4<u32>(14737u, 1u, 45073u, global3.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(abs(abs(global3.d.x)), 1u)], 0i & global1[_wgslsmith_index_u32(~global3.d.x, 1u)]) == (1i << (1u % 32u))) & (~0u > ~_wgslsmith_mod_u32(0u, ~global3.d.x));
    let var_1 = func_1();
    var var_2 = !select(vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true)), !any(vec3<bool>(true, false, true))), vec2<bool>(true, var_1.a.x >= -1114f), !(!any(vec3<bool>(false, true, false))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-global3.a.x), -325f, _wgslsmith_f_op_f32(min(-166f, global3.a.x))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-202f, global2.x, 1000f), var_1.a)))))), abs(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a.x, global3.c.x, -29534i, 1i), global3.c)), reverseBits(~firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(var_1.d.x, 1u)], u_input.b, 1i, global3.b.x))), global3.d);
    let var_4 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.www) + _wgslsmith_div_vec3_f32(var_3.a, global2.zzw)) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global2.wwz)))), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_vec2_f32(var_3.a.xz, var_3.a.zz)).a * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(746f, 1784f, var_3.a.x)))))), var_3.c, min(~(countOneBits(var_3.c) << (vec4<u32>(2975u, 0u, var_1.d.x, 22900u) % vec4<u32>(32u))), global3.c), ~var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1618f - _wgslsmith_f_op_f32(-440f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - -1364f)))), ~_wgslsmith_mod_i32(u_input.a.x, var_1.b.x));
}


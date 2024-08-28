struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(186f, 757f, 282f), vec3<f32>(-359f, -1101f, 285f), vec3<f32>(-842f, -526f, -660f));

var<private> global2: array<bool, 6> = array<bool, 6>(true, true, false, false, false, true);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec4<i32> {
    global2 = array<bool, 6>();
    var var_0 = Struct_3(u_input.a, _wgslsmith_f_op_f32(round(584f)), ~vec4<u32>(u_input.a, u_input.a, countOneBits(u_input.a), u_input.a), Struct_2(Struct_1(abs(vec2<i32>(-13346i, -2147483647i)), select(vec3<bool>(true, true, true), !vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a, 6u)]), false), select(~vec4<i32>(arg_0, arg_0, 2147483647i, 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, 31327i, -2147483647i, -2147483647i), vec4<i32>(arg_0, arg_0, 53278i, 69656i), vec4<i32>(arg_0, arg_0, arg_0, 2147483647i)), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 6u)], global2[_wgslsmith_index_u32(0u, 6u)], false, false))), Struct_1(~abs(vec2<i32>(1i, arg_0)), vec3<bool>(global2[_wgslsmith_index_u32(51771u, 6u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u), 6u)], any(vec4<bool>(global2[_wgslsmith_index_u32(25443u, 6u)], false, true, false))), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 2147483647i, -17295i, 33777i), select(vec4<i32>(0i, 1150i, arg_0, arg_0), vec4<i32>(arg_0, arg_0, 21085i, arg_0), global2[_wgslsmith_index_u32(1u, 6u)])))), _wgslsmith_dot_vec3_i32(-abs(vec3<i32>(arg_0, 1i, arg_0)) & _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, 15811i, arg_0) | vec3<i32>(arg_0, arg_0, arg_0), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, arg_0, arg_0), vec3<i32>(2147483647i, arg_0, arg_0), vec3<i32>(0i, arg_0, -70814i))), _wgslsmith_clamp_vec3_i32(-(vec3<i32>(-25860i, arg_0, 26616i) | vec3<i32>(2016i, arg_0, -16830i)), -_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, 11556i, -27444i), vec3<i32>(arg_0, arg_0, -9556i)), min(vec3<i32>(-48172i, arg_0, 0i), vec3<i32>(arg_0, 1i, arg_0)) | vec3<i32>(arg_0, arg_0, -1i))));
    let var_1 = !global2[_wgslsmith_index_u32(25624u, 6u)];
    return reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(-9799i, 2147483647i), -2147483647i & var_0.d.a.c.x), arg_0, i32(-1i) * -9154i, var_0.d.b.c.x & ~arg_0), vec4<i32>(min(max(arg_0, var_0.e), arg_0), _wgslsmith_mod_i32(2147483647i, 14411i), var_0.d.a.a.x, arg_0)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec4<i32>) -> vec2<bool> {
    var var_0 = arg_0.b;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(508f, 307f), 2235f)), arg_0.b, true))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.b, -277f)))));
    let var_1 = firstLeadingBit(_wgslsmith_add_vec4_i32(~arg_1, ~vec4<i32>(-5582i, arg_0.e, arg_2.x, arg_2.x)) & -_wgslsmith_div_vec4_i32(vec4<i32>(50602i, -15809i, -16274i, -1810i), arg_2)) | arg_2;
    let var_2 = arg_0.d.a.b;
    var var_3 = arg_0.d;
    return !var_3.a.b.zy;
}

fn func_2() -> vec2<u32> {
    global2 = array<bool, 6>();
    let var_0 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(1i, 19820i), ~(~(-24348i))), -1i) >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 0u) >> (~vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), ~(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.a, u_input.a))), vec2<u32>(u_input.a, u_input.a) << (min(~vec2<u32>(20682u, 1u), ~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u));
    let var_1 = select(vec2<bool>(!global2[_wgslsmith_index_u32(~reverseBits(4294967295u), 6u)], all(!(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 6u)], global2[_wgslsmith_index_u32(1u, 6u)], false, global2[_wgslsmith_index_u32(u_input.a, 6u)])))), select(select(func_4(Struct_3(u_input.a, 1637f, vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), Struct_2(Struct_1(var_0, vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 6u)], false, global2[_wgslsmith_index_u32(50200u, 6u)]), vec4<i32>(-51637i, -29632i, var_0.x, var_0.x)), Struct_1(var_0, vec3<bool>(true, global2[_wgslsmith_index_u32(41942u, 6u)], global2[_wgslsmith_index_u32(u_input.a, 6u)]), vec4<i32>(55478i, 19976i, var_0.x, 3494i))), var_0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, -2147483647i, 14240i, 10496i), vec4<i32>(var_0.x, -30899i, 2147483647i, -1i)), func_3(0i)), vec2<bool>(false, false), func_4(Struct_3(u_input.a, 1454f, vec4<u32>(u_input.a, u_input.a, u_input.a, 43353u), Struct_2(Struct_1(vec2<i32>(var_0.x, var_0.x), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 6u)], true, false), vec4<i32>(var_0.x, -17081i, var_0.x, var_0.x)), Struct_1(var_0, vec3<bool>(true, global2[_wgslsmith_index_u32(10545u, 6u)], global2[_wgslsmith_index_u32(1u, 6u)]), vec4<i32>(-4616i, var_0.x, 4702i, -1i))), var_0.x), vec4<i32>(-7959i, -4843i, -2147483647i, var_0.x), -vec4<i32>(-2147483647i, 65288i, 20343i, var_0.x))), vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a, _wgslsmith_div_u32(u_input.a, 1u)), 6u)], true), !global2[_wgslsmith_index_u32(4294967295u, 6u)]), global2[_wgslsmith_index_u32(0u, 6u)]);
    global0 = ~u_input.a;
    let var_2 = Struct_3(u_input.a & 1u, 205f, ~(vec4<u32>(u_input.a, abs(u_input.a), u_input.a, 1u) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 0u), min(vec4<u32>(59044u, u_input.a, u_input.a, 0u), vec4<u32>(59371u, 1u, 4558u, u_input.a)))), Struct_2(Struct_1(vec2<i32>(var_0.x >> (4294967295u % 32u), _wgslsmith_div_i32(var_0.x, var_0.x)), select(vec3<bool>(false, false, var_1.x), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 6u)], false, global2[_wgslsmith_index_u32(11061u, 6u)]), !vec3<bool>(true, var_1.x, true)), vec4<i32>(firstLeadingBit(var_0.x), _wgslsmith_add_i32(var_0.x, 1i), _wgslsmith_add_i32(10631i, var_0.x), 2147483647i)), Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(17822i, var_0.x), vec2<i32>(0i, -2147483647i)), var_0), vec3<bool>(any(vec4<bool>(var_1.x, var_1.x, false, true)), global2[_wgslsmith_index_u32(1u, 6u)], true), -vec4<i32>(41408i, 1i, var_0.x, -19182i))), ~(-var_0.x));
    return var_2.c.yy;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(677f, arg_0.b, 114f, arg_0.b) - vec4<f32>(arg_0.b, -1811f, arg_0.b, 559f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, 261f, arg_0.b, arg_0.b) - vec4<f32>(arg_0.b, 567f, arg_0.b, 534f)), select(vec4<bool>(arg_2.b.x, global2[_wgslsmith_index_u32(u_input.a, 6u)], true, false), vec4<bool>(true, true, arg_0.d.b.b.x, arg_2.b.x), arg_2.b.x))) - vec4<f32>(-629f, _wgslsmith_f_op_f32(round(arg_0.b)), 1556f, _wgslsmith_div_f32(arg_0.b, 1826f))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, -355f, arg_0.b, -665f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -546f, arg_0.b, arg_0.b))), vec4<f32>(_wgslsmith_f_op_f32(arg_0.b - 902f), -230f, arg_0.b, 1f)))));
    let var_1 = arg_3.yx & _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(38976u, arg_0.a), func_2()), ~(~arg_3.xx)), select(_wgslsmith_sub_vec2_u32(reverseBits(arg_1.xy), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_3.x, arg_0.c.x), vec2<u32>(1u, arg_3.x))), vec2<u32>(u_input.a << (arg_1.x % 32u), _wgslsmith_sub_u32(arg_0.a, 44931u)), select(!vec2<bool>(arg_0.d.a.b.x, true), vec2<bool>(arg_2.b.x, true), select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 6u)]), vec2<bool>(arg_0.d.b.b.x, true), global2[_wgslsmith_index_u32(arg_1.x, 6u)]))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(335f)));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)));
    var var_4 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * -718f) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(488f, 1045f))))) + -514f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1481f - -760f) - _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), var_0)), _wgslsmith_f_op_f32(func_1(Struct_3(1u, var_0, vec4<u32>(34085u, 13089u, u_input.a, u_input.a), Struct_2(Struct_1(vec2<i32>(1i, 2147483647i), vec3<bool>(true, global2[_wgslsmith_index_u32(51680u, 6u)], true), vec4<i32>(10421i, -37831i, -1i, 0i)), Struct_1(vec2<i32>(2147483647i, -2147483647i), vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(u_input.a, 6u)]), vec4<i32>(-19440i, -2147483647i, -10206i, -1i))), 3793i), vec3<u32>(u_input.a, 4294967295u, u_input.a) ^ vec3<u32>(1u, u_input.a, u_input.a), Struct_1(vec2<i32>(1i, 2147483647i), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 6u)], true, true), vec4<i32>(-71853i, -2147483647i, -1i, 2147483647i)), ~vec3<u32>(58193u, 84187u, u_input.a)))) * global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~max(vec3<u32>(u_input.a, u_input.a, 56627u), vec3<u32>(0u, 1u, u_input.a))), 3u)])));
    let var_2 = vec2<i32>(~_wgslsmith_clamp_i32(0i, 1i, min(0i, -2147483647i)) & _wgslsmith_dot_vec2_i32(min(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(39930i, 0i)), reverseBits(vec2<i32>(-2147483647i, 13429i))), vec2<i32>(61603i, -2147483647i)), ~_wgslsmith_mod_i32(1i, ~31297i) & _wgslsmith_mult_i32(select(-1i, -14929i, global2[_wgslsmith_index_u32(u_input.a, 6u)]) & -1i, firstLeadingBit(~13637i)));
    global1 = array<vec3<f32>, 3>();
    let var_3 = Struct_3(~1u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(746f, 341f)), 1f))), firstLeadingBit(_wgslsmith_div_vec4_u32(firstTrailingBit(~vec4<u32>(0u, 26279u, u_input.a, 4294967295u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 24761u, 88327u, 4294967295u), vec4<u32>(u_input.a, 4294967295u, 46838u, 86144u), vec4<u32>(u_input.a, 22382u, u_input.a, 4294967295u)))), Struct_2(Struct_1(min(vec2<i32>(-13467i, 1i), vec2<i32>(var_2.x, var_2.x)), !vec3<bool>(true, global2[_wgslsmith_index_u32(53786u, 6u)], global2[_wgslsmith_index_u32(15807u, 6u)]), ~vec4<i32>(var_2.x, -24829i, 0i, var_2.x) | select(vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<i32>(-5077i, -52742i, var_2.x, var_2.x), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(u_input.a, 6u)], global2[_wgslsmith_index_u32(0u, 6u)]))), Struct_1(min(~var_2, -vec2<i32>(1i, var_2.x)), !vec3<bool>(global2[_wgslsmith_index_u32(54686u, 6u)], false, global2[_wgslsmith_index_u32(35393u, 6u)]), ~func_3(var_2.x))), var_2.x);
    let var_4 = Struct_2(Struct_1(var_2, select(select(var_3.d.a.b, !var_3.d.a.b, all(var_3.d.b.b.zy)), !(!var_3.d.b.b), all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 6u)], global2[_wgslsmith_index_u32(var_3.a, 6u)]))), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(var_2.x, var_3.e, var_2.x, 63594i)), countOneBits(vec4<i32>(var_3.e, var_3.e, var_2.x, 43476i)))), var_3.d.b);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, var_3.e, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~firstLeadingBit(vec2<u32>(1u, var_3.c.x)), _wgslsmith_div_vec2_u32(var_3.c.zw | vec2<u32>(23074u, 21013u), var_3.c.zw)), vec2<u32>(firstTrailingBit(var_3.a), ~var_3.a) << (vec2<u32>(~var_3.a, 57590u) % vec2<u32>(32u))), (vec4<i32>(-1i) * -max(var_3.d.b.c, vec4<i32>(1i, var_2.x, var_3.d.a.a.x, 2147483647i))) ^ vec4<i32>(~(~var_3.e), 2147483647i, firstTrailingBit(59080i), _wgslsmith_clamp_i32(18339i | var_4.b.c.x, -9554i, _wgslsmith_dot_vec4_i32(var_3.d.b.c, var_3.d.a.c))), ~(~var_4.b.c.yyx));
}


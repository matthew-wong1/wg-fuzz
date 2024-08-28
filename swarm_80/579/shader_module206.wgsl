struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

var<private> global1: array<vec4<u32>, 10>;

var<private> global2: array<vec2<f32>, 9>;

var<private> global3: array<bool, 1> = array<bool, 1>(true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec3<i32>, arg_3: vec2<u32>) -> vec2<bool> {
    let var_0 = firstTrailingBit(~(~vec3<u32>(~0u, 12560u | arg_3.x, 4294967295u)));
    var var_1 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(0u, 9u)], vec3<f32>(_wgslsmith_f_op_f32(floor(-185f)), 1117f, 1000f), 45510u, var_0.zy, select(vec4<bool>(!global3[_wgslsmith_index_u32(4294967295u, 1u)], arg_2.x < 28720i, !global3[_wgslsmith_index_u32(u_input.a.x, 1u)], true), select(vec4<bool>(arg_0, true, arg_0, global3[_wgslsmith_index_u32(1u, 1u)]), !vec4<bool>(arg_0, arg_0, global3[_wgslsmith_index_u32(1u, 1u)], global3[_wgslsmith_index_u32(25562u, 1u)]), !vec4<bool>(true, false, true, global3[_wgslsmith_index_u32(13782u, 1u)])), (arg_1 ^ 17553i) > arg_1)), select(abs(~abs(vec4<u32>(1u, 1u, arg_3.x, 1u))), ~vec4<u32>(1u, 1u, ~1u, ~arg_3.x), select(vec4<bool>(false, true, arg_0, true), !vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], true, true), true)));
    let var_2 = Struct_3(Struct_2(var_1.a, ~(~global1[_wgslsmith_index_u32(4294967295u, 10u)] ^ ~u_input.a)), Struct_2(Struct_1(var_1.a.a, var_1.a.b, _wgslsmith_mult_u32(1u, arg_3.x), _wgslsmith_add_vec2_u32(firstTrailingBit(var_1.a.d), var_1.b.wx), !select(vec4<bool>(true, var_1.a.e.x, true, var_1.a.e.x), var_1.a.e, arg_0)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(50182u, 0u, arg_3.x, 29174u), var_1.b) >> ((u_input.a & global1[_wgslsmith_index_u32(var_0.x, 10u)]) % vec4<u32>(32u)), abs(vec4<u32>(var_1.b.x, var_1.b.x, 4294967295u, 4294967295u)), vec4<u32>(abs(u_input.a.x), var_0.x & u_input.a.x, ~var_1.b.x, var_0.x))), _wgslsmith_f_op_vec3_f32(abs(var_1.a.b)), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-504f, var_1.a.b.x) + var_1.a.b.xy))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.b.x, var_1.a.a.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.b.x, -147f))), all(!vec4<bool>(arg_0, global3[_wgslsmith_index_u32(arg_3.x, 1u)], true, false)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(697f, -168f, -299f))), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.b.x, -244f, 1134f), var_1.a.b), arg_0)), var_1.a.c, firstLeadingBit(~max(vec2<u32>(22976u, 0u), arg_3)), select(var_1.a.e, select(select(vec4<bool>(var_1.a.e.x, arg_0, false, false), var_1.a.e, vec4<bool>(arg_0, arg_0, arg_0, false)), var_1.a.e, var_1.a.e), select(var_1.a.e, var_1.a.e, vec4<bool>(true, true, true, var_1.a.e.x)))), countOneBits(vec4<u32>(reverseBits(arg_3.x), u_input.a.x, u_input.a.x, var_0.x)));
    global3 = array<bool, 1>();
    var var_3 = var_2.a.a;
    return vec2<bool>(1u > var_3.d.x, var_1.a.e.x);
}

fn func_2() -> u32 {
    let var_0 = Struct_4(func_3(!(true && any(vec4<bool>(global3[_wgslsmith_index_u32(51386u, 1u)], global3[_wgslsmith_index_u32(u_input.a.x, 1u)], false, false))), _wgslsmith_dot_vec3_i32(~select(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], -4573i, global0[_wgslsmith_index_u32(1u, 16u)]), vec3<i32>(-3298i, global0[_wgslsmith_index_u32(54690u, 16u)], 2147483647i), vec3<bool>(true, true, global3[_wgslsmith_index_u32(13653u, 1u)])), vec3<i32>(12320i, -2147483647i, 3611i)), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(15411i, global0[_wgslsmith_index_u32(29599u, 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec3<i32>(51523i, 1i, global0[_wgslsmith_index_u32(18830u, 16u)])), vec3<i32>(-33042i, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(0u, 16u)])), vec3<i32>(global0[_wgslsmith_index_u32(0u, 16u)] >> (u_input.a.x % 32u), global0[_wgslsmith_index_u32(62521u | u_input.a.x, 16u)], _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], -17821i))), vec2<u32>(1u, u_input.a.x & ~u_input.a.x)), -abs(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(1i, -4152i)), global0[_wgslsmith_index_u32(~10685u, 16u)], abs(global0[_wgslsmith_index_u32(49867u, 16u)]))));
    var var_1 = _wgslsmith_clamp_vec3_i32(~(~(_wgslsmith_mod_vec3_i32(var_0.b, var_0.b) | var_0.b)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(~abs(var_0.b), vec3<i32>(_wgslsmith_sub_i32(var_0.b.x, 45050i), global0[_wgslsmith_index_u32(29515u, 16u)], ~global0[_wgslsmith_index_u32(43048u, 16u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b.x, -2147483647i, var_0.b.x), vec3<i32>(0i, 1i, var_0.b.x) | vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], 1i))), -abs(var_0.b << (vec3<u32>(92690u, 0u, u_input.a.x) % vec3<u32>(32u)))), ~vec3<i32>(global0[_wgslsmith_index_u32(min(127604u, u_input.a.x), 16u)], _wgslsmith_mod_i32(var_0.b.x, 0i), reverseBits(14217i)) << (vec3<u32>(_wgslsmith_add_u32(16975u, _wgslsmith_dot_vec4_u32(u_input.a, global1[_wgslsmith_index_u32(41084u, 10u)])), _wgslsmith_clamp_u32(1u, 4294967295u, 1u >> (1u % 32u)), u_input.a.x) % vec3<u32>(32u)));
    var var_2 = Struct_4(vec2<bool>(func_3(func_3(true, 63497i, var_0.b, ~vec2<u32>(u_input.a.x, 4294967295u)).x, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(abs(44349u), 16u)], _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_1.x), var_1.zy), -var_1.x), ~var_0.b, u_input.a.zw).x, all(!(!vec3<bool>(var_0.a.x, true, false)))), _wgslsmith_mod_vec3_i32(var_0.b, ((var_0.b & vec3<i32>(var_1.x, global0[_wgslsmith_index_u32(567u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)])) & vec3<i32>(var_0.b.x, var_0.b.x, -28408i)) | -vec3<i32>(global0[_wgslsmith_index_u32(16452u, 16u)], 0i, global0[_wgslsmith_index_u32(u_input.a.x, 16u)])));
    var var_3 = Struct_3(Struct_2(Struct_1(vec2<f32>(266f, 1f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1787f), 183f, _wgslsmith_f_op_f32(-544f * 1000f)), firstTrailingBit(1u), ~firstTrailingBit(u_input.a.yz), select(select(vec4<bool>(global3[_wgslsmith_index_u32(47905u, 1u)], false, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], var_0.a.x), vec4<bool>(var_0.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], false, false), vec4<bool>(global3[_wgslsmith_index_u32(33608u, 1u)], true, var_2.a.x, true)), vec4<bool>(true, var_0.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], var_0.a.x), global3[_wgslsmith_index_u32(4294967295u, 1u)])), abs(vec4<u32>(1u, u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(57276u, 9u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(745f, 411f, -1678f), vec3<f32>(314f, 1225f, 1000f)))), 5616u, _wgslsmith_add_vec2_u32(u_input.a.yw, countOneBits(vec2<u32>(4294967295u, 4294967295u))), select(select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], false, true, global3[_wgslsmith_index_u32(22180u, 1u)]), vec4<bool>(var_0.a.x, var_2.a.x, true, false), vec4<bool>(var_0.a.x, false, var_2.a.x, global3[_wgslsmith_index_u32(19137u, 1u)])), !vec4<bool>(var_0.a.x, true, var_0.a.x, global3[_wgslsmith_index_u32(28683u, 1u)]), var_0.a.x)), u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f) + _wgslsmith_div_f32(162f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(354f, 1000f, false))), 1271f)), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(218f, 839f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(741f, -269f, 1290f))), _wgslsmith_mod_u32(~(~1u), 1u), u_input.a.wx, vec4<bool>(var_2.a.x, any(vec4<bool>(var_2.a.x, true, false, global3[_wgslsmith_index_u32(7112u, 1u)])) && (false | var_2.a.x), var_0.a.x, !(var_0.a.x & true))), _wgslsmith_div_vec4_u32(abs(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 12549u), 10u)]), u_input.a) & ~_wgslsmith_sub_vec4_u32(vec4<u32>(32566u, u_input.a.x, u_input.a.x, 4294967295u), abs(vec4<u32>(u_input.a.x, u_input.a.x, 20038u, u_input.a.x))));
    var_3 = Struct_3(Struct_2(var_3.b.a, _wgslsmith_add_vec4_u32(~var_3.a.b, ~var_3.a.b)), Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_3.c.x - 1604f), _wgslsmith_f_op_f32(1750f + var_3.b.a.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c.x, var_3.c.x, var_3.d.b.x)), ~_wgslsmith_sub_u32(var_3.d.c, var_3.e.x), vec2<u32>(14123u, _wgslsmith_sub_u32(0u, var_3.b.b.x)), var_3.a.a.e), vec4<u32>(~_wgslsmith_sub_u32(var_3.e.x, 2538u), min(5612u, var_3.d.d.x) << (u_input.a.x % 32u), 37743u, u_input.a.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(772f, var_3.a.a.b.x, -213f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.c, vec3<f32>(var_3.d.b.x, 1482f, -1370f)))))), var_3.a.a, ~(u_input.a ^ u_input.a));
    return abs(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(1u, 0u, 4294967295u)), ~vec3<u32>(0u, var_3.e.x, 54660u)), vec3<u32>(var_3.a.a.d.x, ~u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x))), min(var_3.a.b.xww, _wgslsmith_mult_vec3_u32(u_input.a.zyy, ~u_input.a.xwz))));
}

fn func_1() -> Struct_2 {
    let var_0 = ~(~func_2());
    var var_1 = Struct_4(func_3((u_input.a.x != func_2()) | func_3(!global3[_wgslsmith_index_u32(4294967295u, 1u)], countOneBits(0i), countOneBits(vec3<i32>(2801i, 20541i, -2147483647i)), max(u_input.a.zx, vec2<u32>(u_input.a.x, u_input.a.x))).x, _wgslsmith_add_i32(~(-31637i), 15520i), firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(48236u, 16u)], global0[_wgslsmith_index_u32(var_0, 16u)]) ^ vec3<i32>(-19453i, 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 16u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(37869u, 16u)], -12973i))), u_input.a.yy), select(~vec3<i32>(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), -global0[_wgslsmith_index_u32(u_input.a.x, 16u)], i32(-1i) * -1i), _wgslsmith_mult_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1555u, 16u)], -2147483647i, global0[_wgslsmith_index_u32(var_0, 16u)]), vec3<i32>(26341i, global0[_wgslsmith_index_u32(4294967295u, 16u)], 0i)), max(~vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], -2147483647i, global0[_wgslsmith_index_u32(44050u, 16u)]), -vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], 25351i))), select(select(vec3<bool>(true, true, true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], false, true), !vec3<bool>(global3[_wgslsmith_index_u32(7443u, 1u)], global3[_wgslsmith_index_u32(var_0, 1u)], global3[_wgslsmith_index_u32(u_input.a.x, 1u)])), vec3<bool>(true, true, false), !(!vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 1u)], global3[_wgslsmith_index_u32(var_0, 1u)], true)))));
    var var_2 = min(u_input.a.x, 1u) & u_input.a.x;
    let var_3 = 1u;
    let var_4 = 70813i;
    return Struct_2(Struct_1(vec2<f32>(_wgslsmith_div_f32(-617f, 1f), -894f), vec3<f32>(_wgslsmith_f_op_f32(-345f * _wgslsmith_f_op_f32(1762f + 189f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -293f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-799f, -630f)))), ~u_input.a.x, vec2<u32>(1u, ~var_3), vec4<bool>(var_1.a.x, any(select(vec3<bool>(false, var_1.a.x, var_1.a.x), vec3<bool>(true, false, false), vec3<bool>(var_1.a.x, true, false))), true, global3[_wgslsmith_index_u32(24602u, 1u)])), u_input.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_4) -> StorageBuffer {
    global0 = array<i32, 16>();
    global3 = array<bool, 1>();
    let var_0 = _wgslsmith_sub_vec4_u32(~arg_0.b >> (global1[_wgslsmith_index_u32(1u, 10u)] % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(4294967295u, 1u), ~firstTrailingBit(u_input.a.x), u_input.a.x, 0u), abs(vec4<u32>(func_1().a.d.x, arg_0.b.x, arg_0.b.x, u_input.a.x))));
    global2 = array<vec2<f32>, 9>();
    global1 = array<vec4<u32>, 10>();
    return StorageBuffer(arg_1.a.b.x, vec4<u32>(var_0.x, u_input.a.x, var_0.x, (u_input.a.x ^ 1u) | ~40122u) ^ u_input.a, global2[_wgslsmith_index_u32(~0u, 9u)], min(_wgslsmith_dot_vec2_i32(abs(arg_1.a.b.yz), -vec2<i32>(arg_2.b.x, arg_1.a.b.x)), countOneBits(arg_2.b.x)) ^ -firstTrailingBit(1i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 16>();
    let var_0 = false;
    global0 = array<i32, 16>();
    let var_1 = u_input.a.x;
    global1 = array<vec4<u32>, 10>();
    let x = u_input.a;
    s_output = func_4(func_1(), Struct_5(Struct_4(func_3(false || var_0, min(-2147483647i, 1i), vec3<i32>(global0[_wgslsmith_index_u32(24230u, 16u)], -26212i, 23858i), firstLeadingBit(vec2<u32>(u_input.a.x, var_1))), vec3<i32>(-1i) * -vec3<i32>(global0[_wgslsmith_index_u32(686u, 16u)], -2147483647i, global0[_wgslsmith_index_u32(var_1, 16u)]))), Struct_4(vec2<bool>(select(false, var_0, var_0) && true, func_1().a.e.x), vec3<i32>(65154i, -1i, -1i)));
}


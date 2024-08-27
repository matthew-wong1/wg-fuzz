struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_2,
    d: vec3<f32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1064f, 915f);

var<private> global1: array<vec2<bool>, 15>;

var<private> global2: array<i32, 1>;

var<private> global3: array<f32, 18>;

var<private> global4: vec2<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    let var_0 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(any(vec3<bool>(true, true, false)), false, false), any(!vec4<bool>(any(global1[_wgslsmith_index_u32(0u, 15u)]), true, true, true)));
    var var_1 = Struct_5(u_input.c.x, Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.x, global0.x, global3[_wgslsmith_index_u32(u_input.b, 18u)]), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x - -308f)), ~u_input.b ^ 1u, -_wgslsmith_clamp_vec3_i32(vec3<i32>(20586i, global2[_wgslsmith_index_u32(45762u, 1u)], -10082i), vec3<i32>(global2[_wgslsmith_index_u32(1u, 1u)], 1i, -31289i), vec3<i32>(21735i, global2[_wgslsmith_index_u32(u_input.b, 1u)], -2147483647i))), _wgslsmith_div_i32(max(52025i, -global2[_wgslsmith_index_u32(31747u, 1u)]), global2[_wgslsmith_index_u32(abs(countOneBits(39356u)), 1u)]), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-470f, global3[_wgslsmith_index_u32(29155u, 18u)], -228f, -638f), vec4<f32>(global3[_wgslsmith_index_u32(34069u, 18u)], 607f, 2373f, global4.x)), vec3<bool>(u_input.a.x >= u_input.c.x, false || var_0.x, true), global0.x, ~1u, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], -60676i), -vec3<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], global2[_wgslsmith_index_u32(1u, 1u)], -2147483647i))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1465f, global4.x, global3[_wgslsmith_index_u32(u_input.c.x, 18u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.b, 18u)], -1000f, global3[_wgslsmith_index_u32(u_input.c.x, 18u)], global4.x)), vec4<bool>(true, true, true, true))), vec3<bool>(any(vec4<bool>(true, false, var_0.x, var_0.x)), var_0.x | true, true), -447f, ~(~u_input.c.x), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global2[_wgslsmith_index_u32(u_input.c.x, 1u)], -2147483647i), vec3<i32>(global2[_wgslsmith_index_u32(1u, 1u)], 1i, global2[_wgslsmith_index_u32(u_input.a.x, 1u)])), 19146i, 1i))), _wgslsmith_sub_vec3_u32(max(max(~vec3<u32>(u_input.a.x, 34154u, u_input.c.x), firstTrailingBit(vec3<u32>(57493u, u_input.c.x, u_input.b))), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 17984u, 27293u), _wgslsmith_mod_vec3_u32(u_input.c, u_input.a))), ~u_input.a), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global4.x, global4.x, global4.x, -333f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -1000f, global0.x, global0.x), vec4<f32>(global4.x, global0.x, 2830f, global0.x), vec4<bool>(false, true, var_0.x, var_0.x)))), select(select(var_0, vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x)), !vec3<bool>(var_0.x, true, var_0.x), u_input.b > u_input.a.x), -975f, u_input.c.x, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(56379u, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)]), vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 1u)])), firstTrailingBit(-1i), min(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)]))), 49604i, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-125f, global3[_wgslsmith_index_u32(31453u, 18u)], global3[_wgslsmith_index_u32(113036u, 18u)], 510f)), !var_0, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global4.x, global3[_wgslsmith_index_u32(69184u, 18u)]))), 64668u, vec3<i32>(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)], 0i), _wgslsmith_clamp_i32(-1i, -1i, global2[_wgslsmith_index_u32(4294967295u, 1u)]), global2[_wgslsmith_index_u32(~u_input.a.x, 1u)])), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global4.x, global3[_wgslsmith_index_u32(14558u, 18u)], -669f), vec4<f32>(global0.x, -439f, -533f, 205f)), select(!var_0, vec3<bool>(true, var_0.x, var_0.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1629f, 1110f))), reverseBits(37370u), _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(1i, 1i, 5414i)), firstTrailingBit(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)], 7142i))))));
    var var_2 = Struct_3(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 48348u), var_1.c.yx), 20266u, 31112u, 1u), vec3<i32>(min(~_wgslsmith_mod_i32(-2147483647i, global2[_wgslsmith_index_u32(var_1.a, 1u)]), abs(var_1.d.b) ^ -1i), -abs(-1i) & -_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(var_1.c.x, 1u)], 1i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(global2[_wgslsmith_index_u32(0u, 1u)], -16803i, var_1.b.b), _wgslsmith_mult_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(40034u, 1u)], -42677i, var_1.b.a.e.x), var_1.d.a.e), var_1.b.d.b), vec3<i32>(global2[_wgslsmith_index_u32(22129u, 1u)], -9844i, _wgslsmith_mult_i32(var_1.b.d.e.x, 13990i)))), Struct_2(var_1.d.d, ~(-(2147483647i | global2[_wgslsmith_index_u32(1u, 1u)])), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.d.c.a, var_1.b.d.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.d.c, global3[_wgslsmith_index_u32(var_1.c.x, 18u)], -560f, var_1.d.c.c))), !(!vec3<bool>(var_1.d.c.b.x, false, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.x + 2084f), _wgslsmith_f_op_f32(-643f * var_1.b.c.c)), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, var_1.c.x)), ~vec3<i32>(0i, 10265i, 18291i)), var_1.b.d), _wgslsmith_f_op_vec3_f32(-var_1.d.d.a.ywz), 1i);
    global1 = array<vec2<bool>, 15>();
    global1 = array<vec2<bool>, 15>();
    return false;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = true | (min(_wgslsmith_mod_u32(~arg_0, ~arg_0), u_input.b) <= ~abs(arg_0));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_0, 18u)] * global0.x), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 18u)]), func_3()))), -550f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-308f * _wgslsmith_f_op_f32(435f * global4.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1278f * 623f) - _wgslsmith_f_op_f32(floor(-334f)))), !vec3<bool>(var_0 && true, all(vec3<bool>(true, true, true)), var_0), 1084f, ~arg_0, -select(select(vec3<i32>(-21704i, 10404i, global2[_wgslsmith_index_u32(51546u, 1u)]), vec3<i32>(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(83710u, 1u)], 5191i), var_0) ^ -vec3<i32>(global2[_wgslsmith_index_u32(arg_0, 1u)], -1i, global2[_wgslsmith_index_u32(73744u, 1u)]), min(vec3<i32>(-1i, global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(1u, 1u)]) & vec3<i32>(-33690i, global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 1i, global2[_wgslsmith_index_u32(u_input.c.x, 1u)]), vec3<i32>(global2[_wgslsmith_index_u32(1u, 1u)], -1i, 20163i))), !var_0));
    var_1 = Struct_1(var_1.a, select(vec3<bool>(!all(vec3<bool>(var_1.b.x, false, true)), any(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x)), true), !select(select(var_1.b, var_1.b, var_0), !var_1.b, select(vec3<bool>(var_0, true, var_1.b.x), var_1.b, var_1.b)), select(vec3<bool>(false, all(var_1.b), any(var_1.b)), var_1.b, func_3() || false)), _wgslsmith_f_op_f32(abs(global4.x)), ~abs(~_wgslsmith_sub_u32(1015u, arg_0)), vec3<i32>(-45794i, -abs(max(var_1.e.x, -2147483647i)), ~(global2[_wgslsmith_index_u32(max(1u, var_1.d), 1u)] ^ 2147483647i)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1000f, 526f), var_1.a.x, -1752f, var_1.a.x)), !select(vec3<bool>(true, false, true), !var_1.b, vec3<bool>(true, true, true)), 405f, u_input.c.x, ~var_1.e), countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_1.e.yx, vec2<i32>(5723i, var_1.e.x)), ~(~vec2<i32>(54774i, var_1.e.x)))), Struct_1(var_1.a, vec3<bool>(any(global1[_wgslsmith_index_u32(arg_0, 15u)]) | false, true, false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(269f + global4.x) - global0.x))), var_1.d, _wgslsmith_clamp_vec3_i32(var_1.e, firstLeadingBit(var_1.e) << (u_input.a % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 2147483647i, 82257i) >> (vec3<u32>(4294967295u, arg_0, 87025u) % vec3<u32>(32u)), -var_1.e, var_1.e))), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-574f, var_1.a.x, -234f, 847f)) * _wgslsmith_f_op_vec4_f32(-var_1.a)))), var_1.b, global4.x, u_input.b, firstTrailingBit(~vec3<i32>(-8350i, var_1.e.x, var_1.e.x))));
    let var_3 = global2[_wgslsmith_index_u32(~var_1.d, 1u)];
    return Struct_1(var_1.a, vec3<bool>(!all(vec3<bool>(true, true, false)), false, var_2.d.b.x), _wgslsmith_f_op_f32(max(361f, 1f)), ~(~4294967295u), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, _wgslsmith_div_i32(~var_2.d.e.x, 0i & var_2.a.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.e.x, global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(var_2.d.d, 1u)]) ^ vec4<i32>(1i, var_1.e.x, var_2.d.e.x, var_2.c.e.x), ~vec4<i32>(global2[_wgslsmith_index_u32(1u, 1u)], var_2.b, 0i, var_1.e.x))), abs(min(_wgslsmith_mult_vec3_i32(vec3<i32>(66763i, -13993i, 25103i), var_1.e), _wgslsmith_div_vec3_i32(var_2.c.e, vec3<i32>(var_2.c.e.x, 2147483647i, global2[_wgslsmith_index_u32(0u, 1u)])))), var_1.e));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4) -> Struct_3 {
    let var_0 = arg_1.a;
    global0 = arg_1.a.c.a.a.zx;
    var var_1 = func_2(_wgslsmith_add_u32(1u, u_input.c.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) + -173f), _wgslsmith_f_op_f32(step(-414f, _wgslsmith_f_op_f32(select(-1204f, global3[_wgslsmith_index_u32(u_input.a.x, 18u)], false)))), 1600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.d.x - 355f)))) * var_0.c.d.a);
    let var_3 = vec2<i32>(countOneBits(~0i), ~32897i);
    return Struct_3(~abs(vec4<u32>(u_input.a.x, var_1.d, var_0.c.a.d, 56897u)) ^ vec4<u32>(_wgslsmith_mult_u32(abs(1u), ~86218u), ~4294967295u, 1u, min(0u, var_0.a.x) & arg_1.a.c.d.d), vec3<i32>(firstLeadingBit(_wgslsmith_div_i32(~global2[_wgslsmith_index_u32(4294967295u, 1u)], -33249i)), global2[_wgslsmith_index_u32(var_1.d, 1u)], _wgslsmith_clamp_i32(~global2[_wgslsmith_index_u32(69252u, 1u)] ^ firstTrailingBit(74619i), var_1.e.x, ~_wgslsmith_mult_i32(var_3.x, var_3.x))), Struct_2(func_2(reverseBits(_wgslsmith_mod_u32(u_input.b, var_0.a.x))), arg_1.a.e, func_2(func_2(67079u).d), Struct_1(_wgslsmith_f_op_vec4_f32(round(func_2(40836u).a)), !arg_1.a.c.d.b, -477f, 1u, -var_1.e)), vec3<f32>(_wgslsmith_f_op_f32(abs(global4.x)), _wgslsmith_f_op_f32(var_1.c + -783f), _wgslsmith_f_op_f32(f32(-1f) * -1179f)), var_1.e.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_4) -> vec3<f32> {
    global3 = array<f32, 18>();
    let var_0 = ~vec4<i32>(arg_2.e, firstLeadingBit(global2[_wgslsmith_index_u32(~0u, 1u)]), firstLeadingBit(_wgslsmith_clamp_i32(arg_1.b.x, arg_3.a.c.b, -17351i)), min(firstLeadingBit(-1i), -17177i));
    let var_1 = 52363i;
    let var_2 = var_0;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_0.c.d.a.wx), vec2<f32>(-1000f, _wgslsmith_div_f32(-164f, _wgslsmith_f_op_f32(-arg_2.d.x))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_0.d))));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<u32>) -> Struct_4 {
    var var_0 = vec2<u32>(~(~4294967295u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(106259u, arg_1.x) >> (arg_1.x % 32u), ~arg_1.x));
    var var_1 = vec2<i32>((17155i >> (u_input.a.x % 32u)) >> (arg_1.x % 32u), -2147483647i);
    var var_2 = Struct_5(~(~(~8963u)), func_1(global1[_wgslsmith_index_u32(var_0.x, 15u)], Struct_4(Struct_3(vec4<u32>(arg_1.x, 6240u, u_input.c.x, arg_1.x), func_2(arg_1.x).e, func_1(global1[_wgslsmith_index_u32(14918u, 15u)], Struct_4(Struct_3(vec4<u32>(var_0.x, arg_1.x, u_input.a.x, var_0.x), vec3<i32>(global2[_wgslsmith_index_u32(26531u, 1u)], 55467i, 2147483647i), Struct_2(Struct_1(vec4<f32>(global3[_wgslsmith_index_u32(0u, 18u)], -774f, global3[_wgslsmith_index_u32(var_0.x, 18u)], -283f), vec3<bool>(false, true, false), global4.x, var_0.x, vec3<i32>(var_1.x, var_1.x, var_1.x)), global2[_wgslsmith_index_u32(28247u, 1u)], Struct_1(vec4<f32>(global0.x, 809f, 588f, arg_0.x), vec3<bool>(true, true, true), arg_0.x, arg_1.x, vec3<i32>(var_1.x, var_1.x, 1i)), Struct_1(vec4<f32>(-367f, global0.x, 1373f, 704f), vec3<bool>(true, true, false), -1235f, 1u, vec3<i32>(-1i, var_1.x, global2[_wgslsmith_index_u32(arg_1.x, 1u)]))), arg_0, 11030i))).c, vec3<f32>(779f, global3[_wgslsmith_index_u32(arg_1.x, 18u)], -1000f), global2[_wgslsmith_index_u32(~26505u, 1u)]))).c, reverseBits(~vec3<u32>(arg_1.x, u_input.c.x, 33674u)) & select(vec3<u32>(_wgslsmith_div_u32(arg_1.x, 4294967295u), arg_1.x ^ 15794u, 4294967295u), reverseBits(u_input.a), func_2(1u).b), func_1(global1[_wgslsmith_index_u32(arg_1.x, 15u)], Struct_4(Struct_3(vec4<u32>(0u, arg_1.x, u_input.b, 0u) >> (vec4<u32>(0u, 0u, arg_1.x, 1u) % vec4<u32>(32u)), ~vec3<i32>(global2[_wgslsmith_index_u32(1562u, 1u)], var_1.x, -2147483647i), func_1(global1[_wgslsmith_index_u32(var_0.x, 15u)], Struct_4(Struct_3(vec4<u32>(u_input.b, u_input.b, u_input.a.x, arg_1.x), vec3<i32>(-1i, var_1.x, -2147483647i), Struct_2(Struct_1(vec4<f32>(1277f, 1626f, 1378f, -1545f), vec3<bool>(true, true, false), global4.x, 9402u, vec3<i32>(1i, 33651i, global2[_wgslsmith_index_u32(var_0.x, 1u)])), global2[_wgslsmith_index_u32(var_0.x, 1u)], Struct_1(vec4<f32>(-554f, global3[_wgslsmith_index_u32(arg_1.x, 18u)], 1000f, 636f), vec3<bool>(false, false, false), global4.x, u_input.a.x, vec3<i32>(-2147483647i, 2147483647i, global2[_wgslsmith_index_u32(44914u, 1u)])), Struct_1(vec4<f32>(global3[_wgslsmith_index_u32(u_input.b, 18u)], 298f, global0.x, global0.x), vec3<bool>(true, false, false), global0.x, 1u, vec3<i32>(0i, global2[_wgslsmith_index_u32(u_input.b, 1u)], 0i))), arg_0, -1i))).c, _wgslsmith_f_op_vec3_f32(step(arg_0, arg_0)), 3650i))).c);
    let var_3 = Struct_4(func_1(vec2<bool>(!(var_2.d.a.b.x || true), ~global2[_wgslsmith_index_u32(var_0.x, 1u)] != var_1.x), Struct_4(func_1(select(var_2.d.a.b.xz, vec2<bool>(false, var_2.d.a.b.x), var_2.d.c.b.x), Struct_4(Struct_3(vec4<u32>(var_2.c.x, 8112u, arg_1.x, 65292u), var_2.d.d.e, var_2.b, var_2.d.c.a.zwz, 2615i))))));
    var_2 = Struct_5(0u, var_2.d, vec3<u32>(var_3.a.c.d.d, arg_1.x, ~10085u), Struct_2(Struct_1(vec4<f32>(global0.x, -1000f, _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(max(arg_0.x, global3[_wgslsmith_index_u32(32670u, 18u)]))), !vec3<bool>(var_2.b.a.b.x, var_2.b.d.b.x, false), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.x, 18u)] + _wgslsmith_f_op_f32(floor(-1002f))), _wgslsmith_mod_u32(36339u, var_2.b.c.d) >> (~u_input.b % 32u), var_2.d.d.e), -(var_1.x << (~1502u % 32u)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_3.a.c.c.a.x), 2457f, global0.x, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 18u)] + var_3.a.d.x)), func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(25671u, 0u, 1u), var_2.c)).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(931f - -719f) + _wgslsmith_div_f32(338f, global0.x)), 15259u, var_3.a.b), Struct_1(var_3.a.c.a.a, vec3<bool>(true, any(vec2<bool>(var_3.a.c.c.b.x, false)), all(global1[_wgslsmith_index_u32(u_input.a.x, 15u)])), 2211f, ~4294967295u, var_2.b.c.e >> (vec3<u32>(0u, arg_1.x, var_2.a) % vec3<u32>(32u)))));
    return Struct_4(Struct_3(abs(func_1(func_1(var_2.d.d.b.xx, Struct_4(Struct_3(var_3.a.a, var_3.a.b, Struct_2(Struct_1(vec4<f32>(755f, -780f, 1149f, -496f), vec3<bool>(var_3.a.c.d.b.x, false, var_2.d.a.b.x), -1859f, 4294967295u, var_3.a.b), 1i, Struct_1(vec4<f32>(global3[_wgslsmith_index_u32(var_0.x, 18u)], arg_0.x, -663f, global3[_wgslsmith_index_u32(25658u, 18u)]), var_3.a.c.d.b, -651f, u_input.c.x, var_3.a.b), Struct_1(var_2.b.d.a, var_2.b.a.b, global0.x, var_2.d.d.d, var_2.b.c.e)), arg_0, var_2.d.d.e.x))).c.c.b.zz, Struct_4(var_3.a)).a), max(var_2.b.a.e, _wgslsmith_mult_vec3_i32(var_2.b.d.e, vec3<i32>(var_1.x, var_2.d.c.e.x, var_3.a.e))) | -vec3<i32>(var_2.b.d.e.x, var_3.a.c.c.e.x, -2147483647i), var_3.a.c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(arg_0)))), reverseBits(-1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(38734u, u_input.a.x, u_input.c.x, u_input.a.x), vec4<u32>(0u, 4294967295u, u_input.c.x, 1u)) ^ _wgslsmith_mod_u32(0u, 13930u)) ^ _wgslsmith_add_u32(~u_input.b, reverseBits(u_input.b)));
    var var_1 = true;
    var var_2 = func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_1(vec2<bool>(false, false), Struct_4(Struct_3(vec4<u32>(u_input.a.x, u_input.b, 27536u, 15232u), vec3<i32>(14962i, 1i, -2147483647i), Struct_2(Struct_1(vec4<f32>(global4.x, global4.x, 789f, global4.x), vec3<bool>(true, true, false), global3[_wgslsmith_index_u32(u_input.b, 18u)], 84553u, vec3<i32>(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(38995u, 1u)])), global2[_wgslsmith_index_u32(u_input.a.x, 1u)], Struct_1(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 18u)], 1000f, global4.x, -112f), vec3<bool>(true, true, false), 1956f, u_input.c.x, vec3<i32>(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(1853u, 1u)])), Struct_1(vec4<f32>(-816f, global4.x, global3[_wgslsmith_index_u32(0u, 18u)], 1516f), vec3<bool>(false, true, false), -1713f, 102365u, vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(0u, 1u)], 1i))), vec3<f32>(global4.x, 322f, 570f), global2[_wgslsmith_index_u32(0u, 1u)]))), Struct_3(vec4<u32>(1u, 4294967295u, u_input.a.x, 4294967295u), vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(u_input.c.x, 1u)]), Struct_2(Struct_1(vec4<f32>(global0.x, global0.x, global0.x, global4.x), vec3<bool>(false, false, false), 1132f, u_input.a.x, vec3<i32>(1i, 0i, global2[_wgslsmith_index_u32(9961u, 1u)])), global2[_wgslsmith_index_u32(24143u, 1u)], Struct_1(vec4<f32>(global0.x, global0.x, -723f, global3[_wgslsmith_index_u32(0u, 18u)]), vec3<bool>(true, true, true), global3[_wgslsmith_index_u32(u_input.c.x, 18u)], 46099u, vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 1u)], 14795i, -43158i)), Struct_1(vec4<f32>(global3[_wgslsmith_index_u32(2798u, 18u)], 1158f, global3[_wgslsmith_index_u32(u_input.b, 18u)], global0.x), vec3<bool>(false, false, true), global0.x, u_input.b, vec3<i32>(global2[_wgslsmith_index_u32(42316u, 1u)], -4145i, global2[_wgslsmith_index_u32(u_input.c.x, 1u)]))), vec3<f32>(591f, -611f, 248f), -1i), Struct_3(vec4<u32>(41907u, 4294967295u, 36956u, 0u), vec3<i32>(16178i, -2147483647i, global2[_wgslsmith_index_u32(122656u, 1u)]), Struct_2(Struct_1(vec4<f32>(global3[_wgslsmith_index_u32(18290u, 18u)], global0.x, -2255f, -2144f), vec3<bool>(false, true, true), -136f, 12230u, vec3<i32>(2147483647i, 11335i, -25300i)), global2[_wgslsmith_index_u32(0u, 1u)], Struct_1(vec4<f32>(global0.x, 1884f, 626f, -1193f), vec3<bool>(false, true, false), 723f, u_input.a.x, vec3<i32>(1i, -1i, global2[_wgslsmith_index_u32(u_input.a.x, 1u)])), Struct_1(vec4<f32>(global0.x, global0.x, 883f, global4.x), vec3<bool>(false, true, false), -713f, u_input.c.x, vec3<i32>(0i, global2[_wgslsmith_index_u32(0u, 1u)], -1770i))), vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 18u)], global3[_wgslsmith_index_u32(u_input.b, 18u)], global3[_wgslsmith_index_u32(0u, 18u)]), -29543i), Struct_4(Struct_3(vec4<u32>(u_input.a.x, 29507u, u_input.a.x, 0u), vec3<i32>(0i, -13824i, global2[_wgslsmith_index_u32(u_input.b, 1u)]), Struct_2(Struct_1(vec4<f32>(-342f, -344f, -1000f, -150f), vec3<bool>(false, false, false), global0.x, 23544u, vec3<i32>(-2147483647i, -1i, 0i)), global2[_wgslsmith_index_u32(u_input.a.x, 1u)], Struct_1(vec4<f32>(global0.x, global0.x, 1205f, global0.x), vec3<bool>(true, false, false), 1208f, 57887u, vec3<i32>(global2[_wgslsmith_index_u32(42960u, 1u)], global2[_wgslsmith_index_u32(6022u, 1u)], global2[_wgslsmith_index_u32(41468u, 1u)])), Struct_1(vec4<f32>(-374f, -1585f, global3[_wgslsmith_index_u32(u_input.c.x, 18u)], global0.x), vec3<bool>(true, true, true), -1087f, 63730u, vec3<i32>(-10456i, global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)]))), vec3<f32>(global0.x, global3[_wgslsmith_index_u32(u_input.a.x, 18u)], 410f), global2[_wgslsmith_index_u32(60979u, 1u)])))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-115f, -1506f, global4.x), vec3<f32>(global0.x, 771f, -142f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-754f - 1672f), _wgslsmith_f_op_f32(f32(-1f) * -872f), _wgslsmith_f_op_f32(sign(-1535f)))), vec3<bool>(true || select(true, true, false), true, global4.x != _wgslsmith_f_op_f32(-293f - 1000f)))), vec2<u32>(select(9812u, u_input.a.x, !select(true, false, false)), ~_wgslsmith_add_u32(~1u, abs(u_input.a.x))));
    var var_3 = select(!select(vec4<bool>(57541u >= var_2.a.a.x, select(true, var_2.a.c.c.b.x, true), var_2.a.c.a.b.x, var_2.a.c.a.b.x | false), select(vec4<bool>(var_2.a.c.a.b.x, var_2.a.c.d.b.x, var_2.a.c.d.b.x, false), !vec4<bool>(true, var_2.a.c.d.b.x, true, var_2.a.c.c.b.x), vec4<bool>(var_2.a.c.a.b.x, var_2.a.c.c.b.x, false, var_2.a.c.c.b.x)), var_2.a.c.d.b.x), !(!select(select(vec4<bool>(var_2.a.c.c.b.x, true, var_2.a.c.a.b.x, true), vec4<bool>(false, var_2.a.c.d.b.x, var_2.a.c.c.b.x, true), var_2.a.c.c.b.x), !vec4<bool>(var_2.a.c.a.b.x, var_2.a.c.d.b.x, false, var_2.a.c.a.b.x), true)), ~var_2.a.a.x > var_2.a.c.a.d);
    var_3 = !vec4<bool>(true, all(!vec4<bool>(true, true, true, var_3.x)), !(!var_2.a.c.c.b.x) && var_2.a.c.a.b.x, any(vec4<bool>(all(var_2.a.c.d.b), !var_2.a.c.c.b.x, false, func_5(var_2.a.c.c.a.wzx, u_input.c.xz).a.c.a.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(1u, 1u)], var_2.a.b.yz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_2.a.d.x, 800f)))), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a.x, 18u)], _wgslsmith_div_f32(2424f, 979f)), var_2.a.c.d.a.x, _wgslsmith_f_op_f32(957f + _wgslsmith_f_op_f32(540f - -156f)))), _wgslsmith_add_vec2_i32(var_2.a.c.c.e.yy, var_2.a.b.zy) << (reverseBits(~(~vec2<u32>(42449u, u_input.b))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_2.a.c.d.a))) * var_2.a.c.d.a));
}


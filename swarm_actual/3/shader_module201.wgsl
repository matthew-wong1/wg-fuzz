struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(110721u, 4294967295u, 25227u);

var<private> global1: array<Struct_2, 23>;

var<private> global2: array<vec3<bool>, 26>;

var<private> global3: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: f32) -> vec4<bool> {
    var var_0 = ~(_wgslsmith_add_vec4_u32(~(~vec4<u32>(global0.x, u_input.a.x, 67750u, u_input.a.x)), _wgslsmith_mult_vec4_u32(max(vec4<u32>(4294967295u, 42547u, global0.x, global0.x), vec4<u32>(4294967295u, global0.x, u_input.a.x, u_input.a.x)), abs(vec4<u32>(global0.x, global0.x, global0.x, 0u)))) & ~vec4<u32>(_wgslsmith_add_u32(u_input.a.x, global0.x), 1u, 38121u, 4294967295u));
    return vec4<bool>(true, global3.x, false, true);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> vec4<f32> {
    var var_0 = true;
    var var_1 = global1[_wgslsmith_index_u32(global0.x, 23u)];
    var var_2 = _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.b.a.x ^ global0.x, _wgslsmith_mult_u32(u_input.a.x, 1u), ~32001u) & ~(~(~u_input.a)), _wgslsmith_mult_vec3_u32(var_1.b.b, vec3<u32>(1u, global0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.a.x, var_1.b.b.x, 1u, 20036u), vec4<u32>(var_1.b.a.x, global0.x, global0.x, var_1.b.a.x)), vec4<u32>(var_1.b.a.x, 4294967295u, u_input.a.x, var_1.b.a.x) << (vec4<u32>(arg_0.b.a.x, 1u, 9039u, 1u) % vec4<u32>(32u))))));
    let var_3 = true;
    let var_4 = _wgslsmith_f_op_vec2_f32(-arg_0.b.d);
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, 1000f, 309f, var_1.b.d.x) * vec4<f32>(-1912f, 721f, var_4.x, arg_0.b.d.x)))) + vec4<f32>(var_4.x, _wgslsmith_f_op_f32(select(var_1.b.d.x, var_1.b.d.x, false)), _wgslsmith_div_f32(603f, 1561f), _wgslsmith_f_op_f32(-var_1.b.d.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.d.x, 568f, -449f, var_1.b.d.x)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b.d.x, 1000f, var_4.x, var_1.b.d.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.b.d.x, 847f, 1540f, arg_0.b.d.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1026f, 2158f, var_4.x, 1131f))))), vec4<bool>(!(arg_1.x && false), global3.x, func_3(vec2<i32>(var_1.c.x, var_1.c.x), select(global2[_wgslsmith_index_u32(4294967295u, 26u)], vec3<bool>(arg_1.x, true, true), false), _wgslsmith_f_op_f32(sign(627f))).x, true))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-571f, 1763f, arg_0.b.d.x, 297f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.d.x, -816f, 626f, 473f) - vec4<f32>(291f, var_4.x, var_4.x, 358f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(916f, 1921f, var_1.b.d.x, var_1.b.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.d.x, -458f, -671f, var_4.x)), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.x, 491f, var_4.x, var_4.x), vec4<f32>(var_1.b.d.x, 1000f, var_4.x, var_1.b.d.x)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b.d.x, 464f, var_1.b.d.x, arg_0.b.d.x), vec4<f32>(-777f, arg_0.b.d.x, var_1.b.d.x, -349f)))))))));
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_2(global3.x, arg_0.b, firstLeadingBit(~vec3<i32>(-35239i, 0i, 0i))), !(!func_3(arg_0.c.yz, vec3<bool>(false, global3.x, global3.x), -144f)))));
    let var_1 = vec2<i32>(0i, ~(-1i));
    let var_2 = i32(-1i) * -((-1i << (0u % 32u)) << ((_wgslsmith_add_u32(global0.x, 80313u) & u_input.a.x) % 32u));
    let var_3 = Struct_1(~vec2<u32>(u_input.a.x, ~u_input.a.x), _wgslsmith_mod_vec3_u32(~u_input.a, vec3<u32>(_wgslsmith_mod_u32(1u, reverseBits(8455u)), 51800u, 6944u)), any(global3.ww), var_0.xz);
    let var_4 = Struct_2(any(global3.xx), Struct_1(vec2<u32>(~(~4294967295u), firstLeadingBit(84341u | var_3.a.x)), vec3<u32>(~0u, reverseBits(0u), 0u), true, _wgslsmith_f_op_vec2_f32(var_3.d - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(arg_0.b.d.x, -938f)))), arg_0.c);
    return ~(-(i32(-1i) * -2147483647i));
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    global3 = !func_3(-max(abs(vec2<i32>(51179i, arg_1.x)), select(vec2<i32>(arg_1.x, arg_1.x), arg_1.yy, vec2<bool>(arg_3, false))), vec3<bool>(true, false, any(func_3(arg_1.xx, vec3<bool>(arg_2.c, true, true), arg_0))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-168f, arg_2.d.x)) + arg_2.d.x))));
    var var_0 = u_input.a.x;
    global0 = vec3<u32>(0u, 38346u, select(reverseBits(1178u), global0.x, false)) & ~(~firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 11835u, 34696u), vec3<u32>(global0.x, 4294967295u, u_input.a.x))));
    global0 = ~vec3<u32>(u_input.a.x, 4600u ^ global0.x, u_input.a.x);
    var_0 = ~(1u >> (~_wgslsmith_dot_vec3_u32(arg_2.b, vec3<u32>(1u, 0u, 64426u) << (u_input.a % vec3<u32>(32u))) % 32u));
    return Struct_2(true, Struct_1(~u_input.a.yz, vec3<u32>(u_input.a.x, ~1u, arg_2.b.x), !(!any(vec4<bool>(false, true, false, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, 1000f))), arg_2.d)))), vec3<i32>(firstLeadingBit(62327i), ~(-1i), firstLeadingBit(1i)));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = func_5(-1000f, -vec3<i32>(abs(_wgslsmith_sub_i32(3894i, -3173i)), func_2(global1[_wgslsmith_index_u32(1u, 23u)]), -55054i), Struct_1(~vec2<u32>(~global0.x, min(global0.x, global0.x)), u_input.a, false, arg_0), global3.x);
    var var_1 = func_5(_wgslsmith_div_f32(-1768f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.d.x * arg_1) * _wgslsmith_f_op_f32(-arg_0.x))), vec3<i32>(76591i, ~countOneBits(var_0.c.x), _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, 1i), var_0.c.x)), var_0.b, false);
    let var_2 = ~var_1.c.x;
    global3 = select(!func_3(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.c.x, -1i), firstLeadingBit(vec2<i32>(0i, var_1.c.x))), !vec3<bool>(var_1.b.c, var_1.b.c, false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1281f)), func_5(arg_0.x, vec3<i32>(23833i, var_2, var_1.c.x), Struct_1(global0.xy, var_1.b.b, var_0.a, var_1.b.d), true).b.d.x)), select(!(!(!vec4<bool>(false, true, var_1.a, arg_2.x))), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(var_1.a, false, var_0.a, var_0.a), vec4<bool>(true, true, true, false))), !vec4<bool>(var_1.a, true, global3.x, !var_0.b.c)), !vec4<bool>(0u < _wgslsmith_mod_u32(50520u, var_0.b.a.x), global3.x, !(16594u >= var_0.b.b.x), false));
    let var_3 = Struct_2(false, Struct_1(~(~(~vec2<u32>(61430u, var_1.b.b.x))), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.b.a.x, 0u, 29168u), var_0.b.b), false, vec2<f32>(1469f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1.b.d.x, arg_0.x)), _wgslsmith_f_op_f32(arg_1 * -180f), true)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-(~(-28205i)), _wgslsmith_mod_i32(~var_2, -1i), 0i << (u_input.a.x % 32u)), (vec3<i32>(-1i) * -vec3<i32>(-1i, 0i, -2147483647i)) | var_0.c, -(~(-vec3<i32>(-26960i, var_1.c.x, -26790i)))));
    return Struct_1(~vec2<u32>(4294967295u, var_3.b.a.x), (vec3<u32>(16361u, abs(var_0.b.a.x), u_input.a.x) >> (var_0.b.b % vec3<u32>(32u))) >> (_wgslsmith_mod_vec3_u32(var_3.b.b, ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_0.b.a.x, 4294967295u), vec3<u32>(global0.x, 6010u, var_3.b.a.x))) % vec3<u32>(32u)), all(global3.wxw), _wgslsmith_f_op_vec2_f32(-var_3.b.d));
}

fn func_6(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1263f * -278f) - _wgslsmith_f_op_f32(-arg_1.d.x)), 434f)), abs(reverseBits(firstTrailingBit(vec3<i32>(-1i, 2147483647i, -38461i)) ^ firstLeadingBit(vec3<i32>(0i, -1i, 0i)))), Struct_1(vec2<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 63397u, 37662u, arg_1.b.x), vec4<u32>(arg_1.b.x, arg_1.a.x, 0u, u_input.a.x))), u_input.a.x), vec3<u32>(2187u, ~u_input.a.x, global0.x), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -731f)))), true);
    global0 = ~u_input.a;
    let var_1 = _wgslsmith_f_op_f32(149f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.d.x)));
    let var_2 = _wgslsmith_mod_u32(global0.x, _wgslsmith_mult_u32(func_5(-860f, var_0.c, arg_1, false).b.b.x, countOneBits(u_input.a.x) ^ ((30485u ^ arg_1.a.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.b.x, u_input.a.x, var_0.b.b.x, global0.x), vec4<u32>(arg_1.a.x, u_input.a.x, global0.x, 4294967295u)) % 32u))));
    let var_3 = func_5(arg_1.d.x, -vec3<i32>(-77806i, var_0.c.x, 1i), Struct_1(arg_1.a & select(~u_input.a.xx, arg_1.b.xx, !global3.yz), vec3<u32>(~_wgslsmith_div_u32(u_input.a.x, 1u), select(_wgslsmith_mod_u32(var_2, 24553u), ~4294967295u, true), 1u), !(!(arg_0 || arg_0)), _wgslsmith_f_op_vec2_f32(-var_0.b.d)), arg_0);
    return Struct_1(~u_input.a.xz, vec3<u32>(109302u, firstTrailingBit(63043u), _wgslsmith_mod_u32(1u, ~(var_3.b.b.x ^ global0.x))), any(vec3<bool>(arg_1.c, (var_0.c.x ^ 1i) > _wgslsmith_sub_i32(1i, var_3.c.x), true)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(f32(-1f) * -775f))));
}

fn func_7(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(select(u_input.a.zx, abs(~(~vec2<u32>(global0.x, 6024u))), true), ~u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f) * _wgslsmith_f_op_f32(arg_1.x + arg_0.d.x)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1000f) * arg_1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(873f, arg_0.d.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1280f + _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x + -1469f), _wgslsmith_f_op_f32(530f - 986f), !arg_0.c)))));
    global0 = vec3<u32>(0u, _wgslsmith_add_u32(min(_wgslsmith_div_u32(global0.x, arg_0.b.x), arg_0.b.x), _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), 0u);
    global3 = vec4<bool>(var_0.c, false, max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, global0.x) << (vec4<u32>(101351u, 35777u, 4294967295u, 67143u) % vec4<u32>(32u)), vec4<u32>(145986u, u_input.a.x, 30010u, u_input.a.x) & vec4<u32>(0u, u_input.a.x, 2058u, 77218u)), 0u) != _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global0.x, 64306u, global0.x, arg_0.b.x)) | vec4<u32>(8828u, global0.x, var_0.b.x, u_input.a.x), firstLeadingBit(vec4<u32>(var_0.a.x, 4294967295u, 52600u, 4294967295u)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, arg_0.a.x, 4744u, 13009u), vec4<u32>(u_input.a.x, 12622u, global0.x, var_0.a.x)) % vec4<u32>(32u))), false);
    let var_1 = func_6(true, Struct_1(vec2<u32>(_wgslsmith_clamp_u32(countOneBits(27422u), var_0.a.x, global0.x), ~4294967295u), vec3<u32>(49935u, 4294967295u, arg_0.b.x | 34819u), !global3.x, var_0.d)).a.x;
    global0 = firstLeadingBit(_wgslsmith_clamp_vec3_u32(var_0.b, ~firstLeadingBit(~arg_0.b), ~_wgslsmith_div_vec3_u32(abs(var_0.b), arg_0.b)));
    return arg_0;
}

fn func_8(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = ~((-_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x), vec3<i32>(0i, arg_0.c.x, arg_0.c.x)) >> ((_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, global0.x, u_input.a.x), vec3<u32>(global0.x, 4294967295u, 0u), vec3<u32>(10921u, u_input.a.x, 4294967295u)) & _wgslsmith_sub_vec3_u32(vec3<u32>(97050u, 0u, 1u), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))) % vec3<u32>(32u))) & abs(arg_0.c));
    let var_1 = 0u;
    var var_2 = vec2<bool>(global3.x, !(any(vec4<bool>(true, global3.x, global3.x, true)) & ((var_0.x & arg_0.c.x) > _wgslsmith_dot_vec4_i32(vec4<i32>(-57015i, var_0.x, 1i, var_0.x), vec4<i32>(arg_0.c.x, 26547i, -1i, arg_0.c.x)))));
    let var_3 = 24967u;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.b.d.x, -799f, arg_0.b.d.x, 1078f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-299f)), _wgslsmith_f_op_f32(round(1000f)), arg_0.b.d.x, _wgslsmith_f_op_vec4_f32(func_4(Struct_2(true, Struct_1(global0.yz, vec3<u32>(1u, 1u, 1488u), true, arg_0.b.d), arg_0.c), vec4<bool>(true, global3.x, arg_0.b.c, var_2.x))).x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0.b.d.x, arg_0.b.d.x, -1671f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(246f, 535f, arg_0.b.d.x, 281f), vec4<f32>(-2045f, -799f, -1458f, 382f), vec4<bool>(arg_0.b.c, arg_0.b.c, var_2.x, global3.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.d.x, arg_0.b.d.x, 3127f, arg_0.b.d.x))))));
    return func_5(var_4.x, arg_0.c, func_5(_wgslsmith_f_op_f32(f32(-1f) * -1076f), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(4333i, 2147483647i, arg_0.c.x), max(vec3<i32>(0i, var_0.x, arg_0.c.x), arg_0.c)), arg_0.c), Struct_1(arg_0.b.a, arg_0.b.b, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(246f, -315f))), func_5(101f, -_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, var_0.x, arg_0.c.x), vec3<i32>(41883i, var_0.x, 0i), vec3<i32>(-23806i, var_0.x, arg_0.c.x)), func_5(_wgslsmith_f_op_f32(min(-564f, -855f)), vec3<i32>(31777i, -2147483647i, arg_0.c.x) >> (vec3<u32>(6628u, 2038u, u_input.a.x) % vec3<u32>(32u)), arg_0.b, true).b, select(var_2.x, true, !var_2.x)).b.c).b, arg_0.b.c).b.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_8(Struct_2(!(!global3.x), func_7(func_6(false, func_1(vec2<f32>(383f, 576f), 2938f, global3.zwz)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1417f, 351f, -1889f))), -vec3<i32>(_wgslsmith_sub_i32(-58044i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-23859i, 270i), vec2<i32>(2147483647i, -24176i)), _wgslsmith_add_i32(3320i, 36163i)))));
    global1 = array<Struct_2, 23>();
    global3 = !(!vec4<bool>(abs(u_input.a.x) <= 1u, global3.x, false, false));
    let var_1 = Struct_1(~func_5(var_0.x, select(vec3<i32>(-28464i, 14730i, -10085i), vec3<i32>(-2147483647i, -32356i, 36300i), global3.x), Struct_1(vec2<u32>(1u, 0u), u_input.a, global3.x, var_0), func_1(var_0, var_0.x, global3.zzx).c).b.b.yy | global0.zz, func_6(false, Struct_1(~func_1(vec2<f32>(var_0.x, var_0.x), var_0.x, global2[_wgslsmith_index_u32(global0.x, 26u)]).b.xx, ~(u_input.a | u_input.a), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, var_0.x), vec2<f32>(1035f, var_0.x)))))).b, var_0.x > var_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, 1227f, global3.x)) + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    let var_2 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-355f, -2366f), _wgslsmith_f_op_f32(-var_1.d.x)))));
}


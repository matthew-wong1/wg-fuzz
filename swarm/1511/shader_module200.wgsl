struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<bool>, 26>;

var<private> global2: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.a, u_input.a)), -vec2<i32>(u_input.a, 10438i)), 22139i), vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, -54638i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.d), vec2<i32>(0i, 0i))), firstTrailingBit(-39315i) >> (arg_2 % 32u), 0i)), ~vec3<i32>(-1i, 1i, u_input.d));
    var var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(~52562u, arg_1.c.x), countOneBits(reverseBits(_wgslsmith_div_vec2_u32(~u_input.b.zx, ~vec2<u32>(arg_1.c.x, 1u)))));
    var var_2 = arg_1;
    return global1[_wgslsmith_index_u32(1u, 26u)];
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<bool>, 26>();
    var var_0 = Struct_1(select(vec3<u32>(global0.x, 16530u, countOneBits(5347u)), firstTrailingBit(_wgslsmith_mult_vec3_u32(abs(u_input.b), ~u_input.b)), u_input.c == _wgslsmith_add_u32(0u, ~global0.x)), select(vec2<bool>(true, true), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, u_input.b.x, ~48388u), 21u)], select(global2[_wgslsmith_index_u32(4294967295u, 21u)], vec2<bool>(true, true), global2[_wgslsmith_index_u32(u_input.c, 21u)])), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, abs(1u), ~21684u, u_input.b.x), min(vec4<u32>(global0.x, 0u, 1u, 0u) | vec4<u32>(u_input.c, global0.x, 14335u, 0u), ~vec4<u32>(0u, 0u, global0.x, u_input.c))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), !func_3(vec2<bool>(true, false), Struct_1(vec3<u32>(0u, u_input.b.x, global0.x), global2[_wgslsmith_index_u32(0u, 21u)], vec4<u32>(u_input.b.x, 0u, 1u, 0u), global1[_wgslsmith_index_u32(1u, 26u)], 1543f), 12293u), global1[_wgslsmith_index_u32(~max(38369u, 1u), 26u)]), true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1466f * 1119f) * _wgslsmith_div_f32(279f, 140f)) - _wgslsmith_f_op_f32(-459f * _wgslsmith_f_op_f32(trunc(552f)))))));
    global0 = ~(~(~vec2<u32>(27593u, u_input.b.x) << (abs(_wgslsmith_clamp_vec2_u32(var_0.a.zz, vec2<u32>(0u, var_0.c.x), u_input.b.yx)) % vec2<u32>(32u))));
    global0 = _wgslsmith_clamp_vec2_u32(var_0.a.xx, _wgslsmith_clamp_vec2_u32(var_0.c.xx, var_0.c.zy, vec2<u32>(var_0.a.x, global0.x) >> (u_input.b.zx % vec2<u32>(32u))), ~_wgslsmith_clamp_vec2_u32(max(u_input.b.xz, abs(var_0.c.xw)), _wgslsmith_mod_vec2_u32(u_input.b.zz, var_0.c.yx ^ vec2<u32>(0u, global0.x)), u_input.b.zz));
    var_0 = Struct_1(_wgslsmith_div_vec3_u32(countOneBits(var_0.a), vec3<u32>(78665u, ~(global0.x ^ u_input.b.x), 4294967295u)), select(!var_0.d.zx, !global2[_wgslsmith_index_u32(~reverseBits(33693u), 21u)], vec2<bool>(true, var_0.b.x)), reverseBits(abs(var_0.c)) ^ var_0.c, func_3(func_3(vec2<bool>(!var_0.b.x, u_input.c <= 116519u), Struct_1(countOneBits(var_0.a), select(var_0.d.yz, global2[_wgslsmith_index_u32(20624u, 21u)], vec2<bool>(true, var_0.d.x)), var_0.c, select(vec3<bool>(true, false, var_0.b.x), vec3<bool>(var_0.b.x, var_0.d.x, true), var_0.d.x), var_0.e), ~(~var_0.c.x)).zx, Struct_1(vec3<u32>(var_0.c.x, 1u, u_input.c) ^ var_0.c.yyy, select(vec2<bool>(true, var_0.b.x), !global2[_wgslsmith_index_u32(27348u, 21u)], vec2<bool>(true, var_0.d.x)), ~firstLeadingBit(vec4<u32>(var_0.a.x, 0u, var_0.c.x, global0.x)), select(func_3(vec2<bool>(var_0.b.x, true), Struct_1(vec3<u32>(21902u, u_input.c, global0.x), global2[_wgslsmith_index_u32(var_0.c.x, 21u)], vec4<u32>(1u, 40571u, var_0.a.x, global0.x), vec3<bool>(true, false, true), -1000f), var_0.c.x), vec3<bool>(var_0.d.x, true, true), select(var_0.d, var_0.d, var_0.b.x)), 1537f), _wgslsmith_sub_u32(_wgslsmith_div_u32(~14361u, 1u), ~(var_0.a.x ^ 25735u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-482f, 1514f))));
    return Struct_1(~var_0.a, vec2<bool>(func_3(select(func_3(global2[_wgslsmith_index_u32(global0.x, 21u)], Struct_1(vec3<u32>(u_input.c, 4294967295u, u_input.c), var_0.b, vec4<u32>(var_0.c.x, 25263u, 4294967295u, var_0.a.x), var_0.d, var_0.e), u_input.b.x).zz, var_0.d.yy, !var_0.d.xx), Struct_1(vec3<u32>(69431u, 91235u, u_input.b.x), vec2<bool>(true, var_0.b.x), vec4<u32>(2376u, u_input.c, global0.x, var_0.c.x), select(global1[_wgslsmith_index_u32(4294967295u, 26u)], vec3<bool>(var_0.b.x, false, true), global1[_wgslsmith_index_u32(4294967295u, 26u)]), _wgslsmith_div_f32(-989f, var_0.e)), ~4294967295u & firstTrailingBit(81280u)).x, select(true, true, true)), _wgslsmith_sub_vec4_u32(var_0.c, _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.x, global0.x, 4294967295u, var_0.c.x) ^ var_0.c, vec4<u32>(global0.x, 992u, 0u, 0u) | var_0.c)) | var_0.c, select(select(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), func_3(var_0.b, Struct_1(var_0.c.zyx, vec2<bool>(true, var_0.b.x), vec4<u32>(3359u, 1u, u_input.b.x, global0.x), vec3<bool>(var_0.b.x, var_0.d.x, var_0.b.x), 1137f), select(0u, 4294967295u, false)), var_0.d.x), vec3<bool>(!any(vec2<bool>(false, var_0.b.x)), var_0.d.x, var_0.b.x), !all(vec3<bool>(false, var_0.d.x, var_0.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * var_0.e), _wgslsmith_f_op_f32(var_0.e + -255f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(265f, var_0.e)) * _wgslsmith_f_op_f32(var_0.e + 153f)))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    global0 = ~u_input.b.xz << (var_0.a.yz % vec2<u32>(32u));
    var var_1 = Struct_1(vec3<u32>(0u, global0.x, select(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 4294967295u, 4294967295u)), _wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(0u, arg_0.a.x, 10958u), var_0.a)), (global0.x ^ arg_0.a.x) | _wgslsmith_add_u32(arg_0.c.x, u_input.b.x), var_0.b.x)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(70423u, _wgslsmith_dot_vec2_u32(u_input.b.xy ^ ~vec2<u32>(4294967295u, 1u), select(~vec2<u32>(var_0.c.x, 34247u), abs(vec2<u32>(u_input.c, 0u)), vec2<bool>(true, var_0.b.x)))), 21u)], ~vec4<u32>(0u, 0u, ~34687u, _wgslsmith_mod_u32(u_input.b.x, ~u_input.c)), select(vec3<bool>(_wgslsmith_f_op_f32(-956f + arg_0.e) == _wgslsmith_f_op_f32(var_0.e - arg_0.e), true, all(!vec3<bool>(false, arg_0.d.x, false))), vec3<bool>(true, all(select(arg_0.d, vec3<bool>(arg_0.d.x, var_0.b.x, var_0.b.x), false)), -u_input.d >= 1i), !(!(!arg_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.e), -2106f, all(vec4<bool>(true, var_0.d.x, false, true)))))));
    global1 = array<vec3<bool>, 26>();
    var_1 = func_2();
    return arg_0;
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(func_2());
    var var_1 = !(!select(vec4<bool>(select(true, var_0.b.x, true), true, all(global2[_wgslsmith_index_u32(u_input.b.x, 21u)]), func_3(vec2<bool>(true, true), var_0, 0u).x), select(select(vec4<bool>(true, true, var_0.b.x, var_0.d.x), vec4<bool>(false, false, true, false), true), !vec4<bool>(false, var_0.b.x, var_0.d.x, false), func_4(Struct_1(vec3<u32>(1u, global0.x, var_0.a.x), var_0.b, vec4<u32>(4707u, var_0.c.x, 77255u, var_0.a.x), var_0.d, var_0.e)).b.x), var_0.d.x));
    var_1 = vec4<bool>(false, true, var_0.d.x, any(vec2<bool>(u_input.d != max(u_input.d, -2147483647i), !var_1.x)));
    var var_2 = countOneBits(_wgslsmith_mod_u32(4294967295u, 4294967295u)) <= _wgslsmith_mult_u32(~u_input.c, ~(4294967295u & global0.x) >> (~(global0.x & global0.x) % 32u));
    global0 = _wgslsmith_mod_vec2_u32(max(~vec2<u32>(21485u, var_0.c.x), vec2<u32>(u_input.b.x, _wgslsmith_mod_u32(max(3466u, 4294967295u), 1u))), (var_0.a.xz ^ abs(~var_0.c.wx)) ^ _wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.a.x, var_0.a.x), max(var_0.a.zy, _wgslsmith_add_vec2_u32(var_0.c.zx, vec2<u32>(63791u, 50275u)))));
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> i32 {
    let var_0 = min(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.d, u_input.d), 0i ^ u_input.a), -30926i, reverseBits(select(u_input.a, 7348i, arg_0.b.x)), ~49035i), select(firstTrailingBit(firstLeadingBit(vec4<i32>(2147483647i, u_input.d, -10699i, u_input.d))), firstTrailingBit(vec4<i32>(0i, u_input.d, u_input.a, u_input.a)), true)) ^ vec4<i32>(u_input.d, reverseBits(35274i), -1i & countOneBits(u_input.a & 0i), u_input.d);
    var var_1 = arg_0;
    let var_2 = -108f;
    var var_3 = var_0.xw ^ vec2<i32>(-1i, _wgslsmith_clamp_i32(u_input.d, ~(var_0.x >> (var_1.a.x % 32u)), i32(-1i) * -2147483647i));
    global0 = max(var_1.c.zx, select(u_input.b.xz, var_1.c.xy, vec2<bool>(_wgslsmith_div_i32(-2147483647i, var_0.x) >= 1i, arg_0.d.x)));
    return ~countOneBits(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 21>();
    global0 = _wgslsmith_add_vec2_u32(u_input.b.zy, ~_wgslsmith_add_vec2_u32(~u_input.b.yz, ~vec2<u32>(global0.x, global0.x)) | vec2<u32>(~u_input.c, _wgslsmith_mod_u32(4294967295u, u_input.c) << (global0.x % 32u)));
    let var_0 = ~_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~(vec2<i32>(1i, u_input.a) | vec2<i32>(u_input.d, -1i)), vec2<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-10814i, 1i)))), vec2<i32>(~_wgslsmith_mult_i32(u_input.d, -2147483647i), 1i));
    var var_1 = _wgslsmith_add_i32(func_5(func_1(), -324f, 10622u), 47194i);
    var var_2 = Struct_1(vec3<u32>(abs(~u_input.c ^ global0.x), _wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(global0.x, 0u, global0.x)), select(~u_input.c, countOneBits(31590u), (var_0.x | 49024i) >= ~u_input.a)), vec2<bool>(false, false), select(vec4<u32>(~17564u, u_input.c << (u_input.c % 32u), global0.x, countOneBits(~u_input.c)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 87048u, global0.x, 4294967295u) | vec4<u32>(u_input.b.x, 0u, 1u, 21827u), vec4<u32>(u_input.c, 1u, 1u, global0.x) >> (vec4<u32>(1u, 46298u, 0u, 4294967295u) % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 4294967295u, global0.x, 0u), vec4<u32>(39690u, 1u, u_input.c, u_input.b.x), vec4<u32>(u_input.c, global0.x, 4294967295u, 28467u))), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, _wgslsmith_mult_i32(-2147483647i, var_0.x) != (66695i << (u_input.c % 32u)))), vec3<bool>(false & any(vec4<bool>(false, true, true, false)), true, true), _wgslsmith_f_op_f32(-695f - 1794f));
    var var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, _wgslsmith_sub_i32(2147483647i, var_0.x), u_input.a, -u_input.a), ~max(vec4<i32>(-2147483647i, -26839i, -1i, -1728i), vec4<i32>(6260i, -1i, u_input.d, u_input.a))) | -_wgslsmith_mult_i32(u_input.a, _wgslsmith_sub_i32(-2495i, var_0.x)), reverseBits(2147483647i), _wgslsmith_div_i32(_wgslsmith_sub_i32(min(u_input.d, var_0.x), _wgslsmith_sub_i32(u_input.a, u_input.d)) ^ firstLeadingBit(_wgslsmith_div_i32(u_input.d, u_input.a)), _wgslsmith_add_i32(-2147483647i, 11767i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1006f), func_2().e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e, 1000f, 708f) * vec3<f32>(var_2.e, var_2.e, -1122f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-635f, -919f, -271f))))), 1u);
}


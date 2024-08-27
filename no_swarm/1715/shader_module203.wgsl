struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10>;

var<private> global1: vec4<u32>;

var<private> global2: Struct_4;

var<private> global3: vec4<bool>;

var<private> global4: bool = false;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> f32 {
    global1 = vec4<u32>(reverseBits(global2.a.a.x), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(global1.x, global1.x, 0u)), ~vec3<u32>(u_input.c, firstTrailingBit(0u), u_input.a.x)), global1.x, 49941u);
    global2 = Struct_4(Struct_1(vec2<u32>(countOneBits(~global1.x), global2.b.a.x), global2.b.b, abs(min(firstTrailingBit(vec4<i32>(-35688i, u_input.b, u_input.b, u_input.b)), ~vec4<i32>(-1i, 2147483647i, -2147483647i, u_input.b)))), global2.b);
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(global2.a.a.x, u_input.a.x << (global2.a.a.x % 32u)), global1.x) & global1.yx, min(i32(-1i) * 0i, global2.a.c.x), vec4<i32>(0i, reverseBits(u_input.b), 1i & (1i | _wgslsmith_mult_i32(u_input.b, global2.b.b)), firstTrailingBit(global2.b.c.x)));
    var var_1 = max(u_input.a.zx, ~(global1.ww >> (~(var_0.a << (vec2<u32>(73651u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_2 = vec4<bool>(true, true, true, true);
    return 1255f;
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(func_3()) > 385f, Struct_4(Struct_1(countOneBits(u_input.a.yy), 2147483647i, global2.b.c), global2.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-861f, _wgslsmith_f_op_f32(select(-1000f, -800f, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-556f, 871f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-241f, 502f) + vec2<f32>(-669f, -123f)), false)))));
    let var_1 = global2.a.a;
    global4 = select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1010f + -346f)))) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0.c.x)), var_0.c.x)), _wgslsmith_f_op_f32(-1f) <= _wgslsmith_f_op_f32(-var_0.c.x), global3.x);
    global0 = array<vec3<i32>, 10>();
    let var_2 = global3.x;
    return _wgslsmith_mult_vec2_u32(u_input.a.yz, _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b.b.a.x, max(96303u, 0u)) | (vec2<u32>(63857u, u_input.a.x) << (vec2<u32>(var_1.x, 4294967295u) % vec2<u32>(32u))), var_0.b.b.a));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4) -> u32 {
    let var_0 = Struct_4(Struct_1(~_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(36379u, 28945u)), _wgslsmith_mult_vec2_u32(global1.zz, vec2<u32>(1u, u_input.a.x))), -abs(_wgslsmith_add_i32(arg_1.b.c.x, 1i)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(arg_1.b.c, select(arg_1.a.c, vec4<i32>(0i, u_input.b, u_input.b, 32524i), false)), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(global2.b.c, vec4<i32>(-37819i, global2.b.c.x, u_input.b, arg_0.x)), -global2.b.c, _wgslsmith_add_vec4_i32(global2.b.c, vec4<i32>(1i, -2147483647i, 1i, arg_1.b.b))))), global2.a);
    var var_1 = Struct_3(!(!select(!global3.wxz, global3.xwx, !vec3<bool>(global3.x, global3.x, global3.x))), ~_wgslsmith_dot_vec3_u32((u_input.a >> (vec3<u32>(var_0.b.a.x, 0u, u_input.c) % vec3<u32>(32u))) & global1.yyx, ~u_input.a));
    var var_2 = Struct_2(!global3.yz, global2.a, Struct_1(~max(vec2<u32>(74096u, var_1.b), func_2()), 11000i, -global2.b.c), arg_1.b.c.x);
    global4 = all(select(!(!select(var_1.a, vec3<bool>(var_2.a.x, var_1.a.x, false), var_1.a)), vec3<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a.a.x, 1875u), vec2<u32>(86193u, 59140u)) < ~1u, all(vec3<bool>(true, var_2.a.x, false)) || all(var_1.a.zx), !global3.x), true));
    let var_3 = ~(vec3<u32>(31417u, ~1u, ~var_2.b.a.x) | vec3<u32>(global2.a.a.x << (~46983u % 32u), ~global2.b.a.x, arg_1.a.a.x | firstTrailingBit(arg_1.a.a.x)));
    return 4294967295u;
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: i32, arg_3: vec2<i32>) -> u32 {
    var var_0 = func_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global2.b.a, global2.b.a), 10u)], Struct_4(global2.a, Struct_1(func_2(), ~(~(-2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, arg_3.x, 0i, 2147483647i), vec4<i32>(arg_2, 11205i, 7767i, u_input.b)))));
    let var_1 = Struct_3(vec3<bool>(true, global3.x, global3.x), _wgslsmith_sub_u32(~global2.a.a.x, 1u));
    global0 = array<vec3<i32>, 10>();
    let var_2 = Struct_4(Struct_1(global2.a.a, arg_0.x, global2.b.c), Struct_1(~u_input.a.zx, abs(u_input.b) << (~59142u % 32u), _wgslsmith_sub_vec4_i32(-(vec4<i32>(arg_3.x, 3188i, -4394i, 1i) >> (vec4<u32>(var_1.b, global2.a.a.x, u_input.a.x, global2.b.a.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(arg_0, arg_0, firstTrailingBit(global2.a.c)))));
    global2 = Struct_4(global2.a, Struct_1(vec2<u32>(~reverseBits(global1.x), _wgslsmith_clamp_u32(var_1.b, global2.b.a.x, 74469u)), arg_3.x, vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(global2.a.c, vec4<i32>(5384i, -13203i, -4550i, var_2.a.c.x), arg_0)));
    return global2.a.a.x >> (abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_1.b), vec2<u32>(var_1.b, 66127u)) << (global1.ww % vec2<u32>(32u)), vec2<u32>(var_2.b.a.x & var_1.b, ~0u))) % 32u);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: u32) -> vec3<f32> {
    global2 = Struct_4(Struct_1(vec2<u32>(arg_0.b ^ 27079u, 0u), -43837i, -vec4<i32>(_wgslsmith_add_i32(global2.b.c.x, u_input.b), 1i, ~u_input.b, ~global2.b.b)), global2.a);
    let var_0 = u_input.a.x >= _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_2, 0u, 64583u, 4294967295u) ^ vec4<u32>(u_input.a.x, global1.x, global2.a.a.x, global2.b.a.x)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 13701u, arg_0.b, arg_0.b), vec4<u32>(u_input.c, global1.x, global1.x, arg_2), vec4<u32>(arg_2, 92013u, global1.x, 8817u)))), 30075u);
    var var_1 = Struct_1(vec2<u32>(~_wgslsmith_mult_u32(0u, reverseBits(arg_0.b)), ~4294967295u), global2.a.c.x, vec4<i32>(0i, ~_wgslsmith_div_i32(-48456i, global2.a.b) & select(-2147483647i, global2.b.b >> (global2.a.a.x % 32u), arg_0.a.x), ~(-firstLeadingBit(-76821i)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i << (arg_2 % 32u), -47344i), global2.a.c.xy | ~global2.b.c.zw)));
    var var_2 = _wgslsmith_mult_u32(1u, 4294967295u);
    let var_3 = Struct_2(select(!select(arg_0.a.yz, !vec2<bool>(true, global3.x), global3.wx), global3.xx, global3.xx), global2.a, Struct_1(vec2<u32>(~global2.b.a.x | ~4294967295u, _wgslsmith_dot_vec3_u32(global1.wxx, u_input.a)), -2036i, ~global2.b.c), _wgslsmith_sub_i32(-1i, -var_1.b));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 1705f, arg_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-249f, 216f, arg_1.x)))), _wgslsmith_f_op_vec3_f32(floor(arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 180f;
    var var_1 = _wgslsmith_div_f32(888f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(Struct_3(global3.yyx, _wgslsmith_sub_u32(39057u, func_1(vec4<i32>(-2147483647i, u_input.b, -110834i, u_input.b), -2468f, 0i, vec2<i32>(0i, u_input.b)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1462f, -1121f, -1258f)))))), u_input.a.x)));
    let var_3 = !select(select(vec4<bool>(true, true, any(vec4<bool>(true, global3.x, global3.x, true)), true), vec4<bool>(all(vec4<bool>(false, true, global3.x, global3.x)), any(vec3<bool>(false, global3.x, false)), global3.x, false), vec4<bool>(all(vec2<bool>(false, false)), global3.x, global3.x, false)), vec4<bool>(all(vec2<bool>(global3.x, global3.x)), global3.x, !(!global3.x), global3.x), select(vec4<bool>(!global3.x, -728f >= var_2.x, !global3.x, any(global3.wy)), select(vec4<bool>(global3.x, true, global3.x, false), vec4<bool>(false, global3.x, false, global3.x), !vec4<bool>(global3.x, global3.x, false, true)), global3.x));
    var var_4 = any(!vec2<bool>(true, any(!var_3.yy)));
    var_1 = -508f;
    var var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-579f)), 673f, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-356f - -125f) - -501f)), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(31729u << (global2.a.a.x % 32u), 4294967295u ^ global1.x), _wgslsmith_dot_vec2_u32(~global2.a.a, global2.b.a ^ u_input.a.zx)), 4294967295u), -58395i, _wgslsmith_f_op_vec3_f32(func_5(Struct_3(vec3<bool>(select(true, false, global3.x), global3.x, global3.x), 34809u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -209f) + _wgslsmith_f_op_f32(-152f * 159f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(448f * 1696f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(-320f))), min(u_input.c, u_input.a.x))).x, _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, global2.a.b), vec3<i32>(global2.b.c.x, global2.b.c.x, u_input.b << (66162u % 32u))));
}


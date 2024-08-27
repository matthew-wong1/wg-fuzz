struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: array<Struct_2, 27>;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 4294967295u, -1654f);

var<private> global3: vec3<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x)))))) + -159f);
    global3 = abs(~reverseBits(arg_2));
    global1 = array<Struct_2, 27>();
    var var_1 = u_input.a;
    var_1 = max(_wgslsmith_add_i32(firstTrailingBit(u_input.a), arg_2.x), global3.x);
    return Struct_3(-_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-56004i, arg_2.x, global3.x, arg_3.x), vec4<i32>(7830i, 58227i, -1i, global3.x)), select(vec4<i32>(-73405i, -15460i, 40410i, -2147483647i), vec4<i32>(-14919i, global3.x, arg_3.x, 0i), false)) | vec4<i32>(~(17249i << (u_input.b.x % 32u)), ~u_input.a << (9355u % 32u), ~(~(-666i)), 1i >> (global2.b % 32u)), -15764i, (global2.b << (~(~u_input.b.x) % 32u)) & arg_0, select(_wgslsmith_mod_u32(~u_input.b.x, min(1u, ~0u)), (abs(0u) ^ global2.b) & ~(~arg_0), global0[_wgslsmith_index_u32(~min(2949u, ~arg_0), 27u)]));
}

fn func_3(arg_0: vec3<f32>) -> vec4<f32> {
    global0 = array<bool, 27>();
    var var_0 = Struct_1(vec2<i32>(select(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global3.x, -6624i, global2.a.x), vec3<i32>(2147483647i, 1i, global3.x), vec3<i32>(-1i, global3.x, 41828i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-34767i, global2.a.x, global3.x), vec3<i32>(global3.x, 8064i, global2.a.x))), any(!vec3<bool>(global0[_wgslsmith_index_u32(2488u, 27u)], true, false))), _wgslsmith_div_i32(1i, 2147483647i)), 1u, _wgslsmith_f_op_f32(685f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c, _wgslsmith_f_op_f32(-global2.c)))));
    let var_1 = vec2<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, global2.b), 27u)]);
    let var_2 = vec4<bool>(arg_0.x <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(484f * -784f), _wgslsmith_f_op_f32(max(arg_0.x, var_0.c))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c), -531f))), all(vec4<bool>(!global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global0[_wgslsmith_index_u32(~var_0.b, 27u)], true, false)) & (!(!var_1.x) && (max(var_0.a.x, var_0.a.x) < _wgslsmith_div_i32(-1i, global3.x))), true, !(!any(!vec4<bool>(true, var_1.x, true, false))));
    let var_3 = ~var_0.a.x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1723f, 234f, arg_0.x, 442f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(218f, 2195f, -1559f, var_0.c) * vec4<f32>(833f, arg_0.x, 419f, -878f)), false)) - vec4<f32>(_wgslsmith_div_f32(arg_0.x, 2857f), _wgslsmith_f_op_f32(f32(-1f) * -837f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-933f, var_0.c))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_2) -> i32 {
    global1 = array<Struct_2, 27>();
    let var_0 = _wgslsmith_mod_vec4_i32(~_wgslsmith_add_vec4_i32(arg_0.a, arg_0.a) | _wgslsmith_sub_vec4_i32(arg_0.a & vec4<i32>(arg_0.b, 6110i, -7549i, global3.x), vec4<i32>(-55775i, u_input.c, 7175i, -761i) >> (u_input.b % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(min(-vec4<i32>(arg_0.b, global2.a.x, 0i, -2147483647i), arg_0.a << (vec4<u32>(40976u, u_input.b.x, 66551u, arg_2.e.b) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(arg_0.a, vec4<i32>(-2147483647i, global2.a.x, 52615i, global3.x)), abs(vec4<i32>(1i, 27844i, global2.a.x, -9194i))))) | arg_0.a;
    var var_1 = any(select(!(!(!vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(6687u, 27u)]))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(global0[_wgslsmith_index_u32(43325u, 27u)], false, true, true), vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(4294967295u, 27u)]), global0[_wgslsmith_index_u32(arg_0.c, 27u)]), !vec4<bool>(true, true, arg_2.c, arg_2.c))));
    let var_2 = global1[_wgslsmith_index_u32(~global2.b, 27u)];
    var_1 = ~_wgslsmith_dot_vec3_i32(select(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, global3.x, var_0.x), vec3<i32>(u_input.a, -953i, 2147483647i)), _wgslsmith_sub_vec3_i32(arg_0.a.wwx, arg_0.a.xzz), var_2.c), select(-vec3<i32>(global3.x, arg_0.b, -2147483647i), vec3<i32>(arg_0.b, global3.x, -21969i), arg_2.c)) == global2.a.x;
    return 10603i;
}

fn func_1() -> Struct_4 {
    let var_0 = func_2(_wgslsmith_mult_u32(_wgslsmith_div_u32(reverseBits(u_input.b.x), ~0u), u_input.b.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(206f * global2.c) + -2573f), -461f, 1300f), ~_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-1i, 2147483647i), ~2147483647i, 0i >> (1u % 32u)), _wgslsmith_add_vec3_i32(~vec3<i32>(0i, 0i, global2.a.x), vec3<i32>(-23312i, -1825i, global2.a.x))), select(~min(global3.yx, -vec2<i32>(-2147483647i, global3.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(31792i, ~2147483647i), global3.xy), vec2<bool>(true, !any(vec2<bool>(true, true)))));
    var var_1 = ~vec2<u32>(_wgslsmith_mod_u32(~var_0.d, var_0.c >> (var_0.d % 32u)), 40251u);
    let var_2 = ~vec4<i32>(_wgslsmith_mod_i32(abs(i32(-1i) * -58589i), _wgslsmith_mult_i32(global2.a.x, ~var_0.b)), _wgslsmith_add_i32(func_4(var_0, _wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(-1049f, global2.c, global2.c))), Struct_2(vec2<i32>(0i, var_0.a.x), -153f, global0[_wgslsmith_index_u32(var_0.c, 27u)], 28406u, Struct_1(var_0.a.zz, 0u, 1704f))), _wgslsmith_dot_vec2_i32(vec2<i32>(-45859i, 37427i) | vec2<i32>(global2.a.x, global3.x), var_0.a.xx)), reverseBits(select(abs(1i), -global3.x, !global0[_wgslsmith_index_u32(var_0.d, 27u)])), 11211i);
    let var_3 = global0[_wgslsmith_index_u32(4294967295u, 27u)];
    global1 = array<Struct_2, 27>();
    return Struct_4(global2.b, true, vec2<bool>(false, true));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.yw, ~(~vec2<u32>(4294967295u, abs(u_input.b.x)))), 27u)];
    let var_1 = Struct_2(abs(global3.yy), global2.c, arg_1.c | false, _wgslsmith_sub_u32(~(~(~arg_2.a)), ~_wgslsmith_dot_vec2_u32(max(vec2<u32>(arg_1.e.b, 1u), vec2<u32>(41570u, 38122u)), max(u_input.b.wx, u_input.b.zz))), Struct_1(vec2<i32>(min(global3.x, global3.x << (4294967295u % 32u)), func_2(abs(u_input.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(383f, var_0.b, global2.c) - vec3<f32>(arg_1.b, var_0.b, -1015f)), vec3<i32>(arg_1.a.x, 1i, arg_1.a.x), global2.a).b), u_input.b.x & arg_3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(2490f)))))));
    global0 = array<bool, 27>();
    var var_2 = !select(select(select(!vec4<bool>(var_0.c, false, true, true), select(vec4<bool>(arg_3.c, false, arg_3.c, global0[_wgslsmith_index_u32(var_0.d, 27u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(var_1.e.b, 27u)], arg_2.b), vec4<bool>(arg_1.c, false, arg_3.c, false)), select(vec4<bool>(true, false, var_0.c, false), vec4<bool>(false, arg_3.c, global0[_wgslsmith_index_u32(4294967295u, 27u)], false), vec4<bool>(var_0.c, arg_2.b, arg_1.c, var_1.c))), !(!vec4<bool>(true, arg_2.b, false, global0[_wgslsmith_index_u32(u_input.b.x, 27u)])), func_1().b), select(select(!vec4<bool>(true, arg_2.c.x, var_0.c, var_0.c), vec4<bool>(var_1.c, arg_2.b, var_0.c, true), true), vec4<bool>(var_0.c | var_0.c, false, arg_3.a.x > arg_0.x, true), select(vec4<bool>(arg_1.c, false, true, arg_3.c), select(vec4<bool>(true, arg_2.c.x, false, var_1.c), vec4<bool>(var_0.c, false, arg_2.b, false), vec4<bool>(true, var_0.c, arg_1.c, arg_2.c.x)), select(vec4<bool>(true, false, arg_2.c.x, true), vec4<bool>(false, arg_1.c, global0[_wgslsmith_index_u32(arg_1.e.b, 27u)], false), true))), !(!func_1().b));
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-419f, global2.c, arg_3.e.c, arg_3.b) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.b, arg_3.e.c, arg_1.e.c, -247f)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, arg_1.e.c, arg_3.b, -692f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1032f, 1662f, arg_3.e.c, 319f))))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.e.c, arg_1.e.c, -351f, arg_1.b), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.e.c, -1008f, var_1.e.c, -367f)))))))));
    return !vec2<bool>(arg_1.c, !(all(vec4<bool>(false, arg_3.c, false, true)) || arg_2.c.x));
}

fn func_6(arg_0: Struct_4, arg_1: f32, arg_2: vec4<i32>) -> Struct_2 {
    global3 = -arg_2.wyw >> (vec3<u32>(~_wgslsmith_mod_u32(~58549u, ~u_input.b.x), u_input.b.x, ~(~(~arg_0.a))) % vec3<u32>(32u));
    let var_0 = func_2(50522u, _wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(973f, arg_1) + _wgslsmith_f_op_f32(f32(-1f) * -1811f)), -1000f, -1000f))).xxz, arg_2.xzx, arg_2.xx);
    var var_1 = arg_0.c;
    global0 = array<bool, 27>();
    let var_2 = ~u_input.c;
    return Struct_2(~(vec2<i32>(-var_2, _wgslsmith_add_i32(global3.x, arg_2.x)) >> (u_input.b.yz % vec2<u32>(32u))), -1861f, !arg_0.c.x, firstLeadingBit(abs(var_0.c)), Struct_1(var_0.a.zw, _wgslsmith_mult_u32(var_0.d, 4294967295u), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_4(~(~(~u_input.b.x)), false, func_5(vec2<i32>(~global3.x, global3.x), Struct_2(global2.a, _wgslsmith_div_f32(global2.c, global2.c), true, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.b, 20074u), vec2<u32>(29554u, global2.b)), Struct_1(vec2<i32>(-69852i, global3.x), 1u, -789f)), func_1(), global1[_wgslsmith_index_u32(~(~u_input.b.x), 27u)])), global2.c, (vec4<i32>(-1i) * -(vec4<i32>(2147483647i, global2.a.x, global2.a.x, global2.a.x) << (u_input.b % vec4<u32>(32u)))) & -min(~vec4<i32>(global2.a.x, -2147483647i, -12004i, u_input.c), vec4<i32>(u_input.a, -9775i, -47188i, u_input.a)));
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(1f - global2.c), _wgslsmith_f_op_f32(abs(-889f)), 911f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(511f + -1055f))))));
    var var_3 = Struct_4(68921u, global0[_wgslsmith_index_u32(reverseBits(var_0.d), 27u)], func_5(abs(vec2<i32>(_wgslsmith_div_i32(u_input.a, u_input.c), 0i)), global1[_wgslsmith_index_u32(var_1.a, 27u)], func_1(), Struct_2(var_0.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(348f * 1280f)), false, abs(u_input.b.x << (4294967295u % 32u)), var_0.e)));
    global2 = var_0.e;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, _wgslsmith_f_op_f32(-global2.c))))) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_2.ww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_2.zz, vec2<f32>(-345f, -288f)))) * vec2<f32>(_wgslsmith_f_op_f32(max(var_2.x, -361f)), var_0.b))));
    let var_5 = select(~(-abs(vec3<i32>(-1i, -2147483647i, -76107i))), vec3<i32>(_wgslsmith_clamp_i32(var_0.e.a.x & global2.a.x, global3.x << (0u % 32u), 24239i), -var_0.e.a.x, reverseBits(select(1134i, var_0.a.x, false))), any(vec3<bool>(false, true, any(vec4<bool>(var_1.c.x, var_0.c, var_3.b, var_1.c.x))))) & select(vec3<i32>(_wgslsmith_add_i32(global3.x, -4920i), i32(-1i) * -50157i, ~min(var_0.e.a.x, 10163i)), _wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.c, var_0.e.a.x, global3.x), vec3<i32>(var_0.a.x, 29440i, u_input.a) ^ vec3<i32>(var_0.a.x, var_0.e.a.x, global2.a.x), all(vec4<bool>(false, true, global0[_wgslsmith_index_u32(var_3.a, 27u)], false))), ~vec3<i32>(global2.a.x, global2.a.x, var_0.a.x)), !vec3<bool>(var_3.c.x, true, any(vec4<bool>(false, true, var_1.b, global0[_wgslsmith_index_u32(global2.b, 27u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(var_0.a.x << (countOneBits(0u) % 32u))), vec4<i32>(_wgslsmith_mult_i32(-(~(-437i)), 0i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_5.x, global2.a.x, -2147483647i, -2147483647i)), ~_wgslsmith_div_vec4_i32(vec4<i32>(-29425i, global3.x, 1i, var_5.x), vec4<i32>(-22118i, 8963i, 2147483647i, u_input.c))), _wgslsmith_div_i32(var_5.x, _wgslsmith_add_i32(~(-16983i), _wgslsmith_dot_vec4_i32(vec4<i32>(-6784i, global3.x, u_input.c, var_5.x), vec4<i32>(0i, -1i, global3.x, var_5.x)))), select(-abs(global2.a.x), func_2(4294967295u, _wgslsmith_f_op_vec3_f32(exp2(var_2.yzw)), vec3<i32>(var_5.x, 4283i, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(6590i, -2147483647i), vec2<i32>(-1i, var_0.e.a.x))).a.x, all(vec4<bool>(true, true, var_3.c.x, var_0.c)))), global3.x);
}


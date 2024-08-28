struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global1: array<Struct_1, 32>;

var<private> global2: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(91282u, 619u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 62004u), vec2<u32>(43300u, 39705u), vec2<u32>(2975u, 68554u), vec2<u32>(0u, 1u), vec2<u32>(1u, 1u), vec2<u32>(35636u, 39721u), vec2<u32>(1u, 1u), vec2<u32>(42744u, 7224u), vec2<u32>(831u, 40187u), vec2<u32>(117954u, 0u), vec2<u32>(1u, 1u), vec2<u32>(65942u, 54368u), vec2<u32>(37996u, 37583u), vec2<u32>(19623u, 1u), vec2<u32>(1u, 8421u), vec2<u32>(51220u, 31539u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 8032u));

var<private> global3: array<vec3<f32>, 26>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = 1i;
    var var_1 = countOneBits(arg_1.c) ^ max(-arg_1.c, (vec3<i32>(26858i, -8063i, u_input.b.x) & arg_2.c) >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_2.b.x, u_input.a, arg_1.b.x), arg_2.b) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.d * _wgslsmith_f_op_f32(f32(-1f) * -701f)), arg_1.d);
    var var_3 = ~(vec2<i32>((arg_1.a.x >> (u_input.a % 32u)) | _wgslsmith_add_i32(-12623i, u_input.b.x), arg_0) ^ u_input.b.xx);
    let var_4 = Struct_1(vec2<i32>(29446i, -2147483647i), min(~(_wgslsmith_add_vec3_u32(arg_2.b, arg_2.b) | (arg_2.b & arg_1.b)), _wgslsmith_sub_vec3_u32(min(vec3<u32>(25097u, 38912u, 3647u), abs(vec3<u32>(u_input.a, 20921u, u_input.a))), vec3<u32>(0u, arg_2.b.x, 4294967295u) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(4214u, 36341u, 16806u), arg_2.b) % vec3<u32>(32u)))), arg_2.c, arg_2.d);
    return min(13752i, 11519i >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_4.b.x, 4294967295u, arg_1.b.x), var_4.b), vec3<u32>(arg_1.b.x, var_4.b.x, var_4.b.x)) % 32u)) ^ -var_4.c.x;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> u32 {
    let var_0 = Struct_1(vec2<i32>(-1i | u_input.c, func_3(firstTrailingBit(u_input.b.x), Struct_1(vec2<i32>(arg_0, arg_0), vec3<u32>(u_input.a, u_input.a, u_input.a), u_input.b, -1001f), Struct_1(vec2<i32>(u_input.b.x, 0i), vec3<u32>(1u, 4294967295u, 80095u), vec3<i32>(1i, -1i, u_input.b.x), -1011f)) | arg_0), ~abs(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.a, 0u, 30372u)), ~vec3<u32>(70190u, u_input.a, 81742u))), ~max(vec3<i32>(u_input.c, ~u_input.c, 1i), u_input.b), _wgslsmith_f_op_f32(-1000f * 1112f));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(abs(var_0.b), vec3<u32>(_wgslsmith_div_u32(u_input.a, var_0.b.x), select(var_0.b.x, u_input.a, false), ~var_0.b.x)), 12527u, firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.b.x, var_0.b.x, var_0.b.x), 4294967295u))), vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(u_input.a), 0u), ~(~1u), _wgslsmith_div_u32(reverseBits(var_0.b.x) ^ var_0.b.x, firstLeadingBit(62415u)), reverseBits(_wgslsmith_div_u32(max(58103u, u_input.a), u_input.a)))), 32u)];
    global1 = array<Struct_1, 32>();
    var var_2 = select(vec2<u32>(var_1.b.x, ~_wgslsmith_mod_u32(u_input.a, ~1u)), var_1.b.zz, any(global0.xw));
    global3 = array<vec3<f32>, 26>();
    return var_1.b.x;
}

fn func_1(arg_0: bool) -> vec4<u32> {
    global0 = vec4<bool>(u_input.b.x == min(0i, -53865i), all(vec4<bool>(false, global0.x, false, all(select(vec4<bool>(false, false, true, false), vec4<bool>(global0.x, global0.x, global0.x, arg_0), vec4<bool>(false, true, global0.x, global0.x))))), global0.x, all(vec4<bool>(!(global0.x && global0.x), all(global0.wxx), global0.x || true, !(!global0.x))));
    global2 = array<vec2<u32>, 20>();
    global2 = array<vec2<u32>, 20>();
    global2 = array<vec2<u32>, 20>();
    var var_0 = global1[_wgslsmith_index_u32(~firstLeadingBit(1u), 32u)];
    return vec4<u32>(_wgslsmith_add_u32(23900u, var_0.b.x), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~var_0.b, var_0.b), ~func_2(var_0.c.x, global0.xxw)), _wgslsmith_div_u32(u_input.a, var_0.b.x), 1u);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = select(~firstTrailingBit(~max(arg_3.b.x, 19028u)), func_1(true).x, true && global0.x);
    var var_1 = Struct_1(u_input.b.yy, arg_3.b, arg_3.c, -680f);
    global1 = array<Struct_1, 32>();
    let var_2 = arg_3;
    global2 = array<vec2<u32>, 20>();
    return !vec4<bool>(arg_0.x, any(!vec3<bool>(arg_0.x, true, global0.x)), all(!vec4<bool>(true, global0.x, false, false)) & !(arg_0.x && false), !arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_4(!(!(!global0.ywz)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, 15541u, u_input.a), vec4<u32>(19536u, u_input.a, u_input.a, u_input.a)) ^ _wgslsmith_add_vec4_u32(func_1(true), countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 115442u))), vec3<f32>(_wgslsmith_div_f32(563f, _wgslsmith_div_f32(-2229f, -1941f)), -1490f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1330f)) - _wgslsmith_f_op_f32(f32(-1f) * -920f))), global1[_wgslsmith_index_u32(1u, 32u)]);
    let var_1 = Struct_1(_wgslsmith_mod_vec2_i32(min(u_input.b.xz, _wgslsmith_mod_vec2_i32(max(u_input.b.xx, u_input.b.yy), firstLeadingBit(u_input.b.yx))), -_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.xx, vec2<i32>(u_input.c, 0i)), -u_input.b.zz)), _wgslsmith_sub_vec3_u32(vec3<u32>(~4294967295u, 1u, ~u_input.a) >> (firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(1u, u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), abs(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(8950u, 1u, 1u), vec3<u32>(u_input.a, u_input.a, 2420u)), select(42970u, 115496u, false), 62041u))), ~(-u_input.b), _wgslsmith_f_op_f32(sign(373f)));
    global2 = array<vec2<u32>, 20>();
    global2 = array<vec2<u32>, 20>();
    let var_2 = Struct_1(var_1.a, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a & var_1.b.x, 83684u, u_input.a) & ~(~var_1.b), var_1.b), ~(~_wgslsmith_add_vec3_i32(min(vec3<i32>(u_input.c, -8039i, -2147483647i), vec3<i32>(u_input.b.x, -1i, u_input.c)), u_input.b)), var_1.d);
    global2 = array<vec2<u32>, 20>();
    global3 = array<vec3<f32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(1034f, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, ~firstTrailingBit(4294967295u), func_2(_wgslsmith_mult_i32(var_1.c.x, var_2.c.x), global0.yxw)), countOneBits(vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, 87256u), var_2.b.yz), ~20460u))), vec2<i32>(min(var_1.a.x, ~(i32(-1i) * -1i)), firstLeadingBit(u_input.c)), vec2<f32>(_wgslsmith_f_op_f32(var_2.d + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d, 643f) * _wgslsmith_f_op_f32(abs(466f)))), _wgslsmith_f_op_f32(f32(-1f) * -135f)));
}


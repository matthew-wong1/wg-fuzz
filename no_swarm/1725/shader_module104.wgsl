struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec3<f32>(-796f, -1040f, -1150f), true), Struct_3(vec3<f32>(-2421f, -1341f, -2268f), true), Struct_3(vec3<f32>(-368f, 364f, 951f), true), Struct_3(vec3<f32>(-806f, -304f, -872f), false), Struct_3(vec3<f32>(-1050f, -1254f, -106f), false), Struct_3(vec3<f32>(-137f, 1000f, -1211f), true), Struct_3(vec3<f32>(-1877f, -1000f, 238f), true), Struct_3(vec3<f32>(-105f, 531f, -162f), false), Struct_3(vec3<f32>(-1315f, -789f, 240f), false), Struct_3(vec3<f32>(1801f, 2009f, 809f), false), Struct_3(vec3<f32>(1687f, 330f, 1000f), false), Struct_3(vec3<f32>(390f, 899f, 1341f), false), Struct_3(vec3<f32>(112f, -852f, 937f), true), Struct_3(vec3<f32>(-433f, 363f, 412f), false), Struct_3(vec3<f32>(1000f, -1000f, -260f), false), Struct_3(vec3<f32>(1000f, 832f, -1968f), true), Struct_3(vec3<f32>(-1780f, -1150f, -185f), true), Struct_3(vec3<f32>(-1004f, -1136f, 860f), true), Struct_3(vec3<f32>(-1000f, 1682f, -1000f), false), Struct_3(vec3<f32>(806f, 1090f, -906f), true), Struct_3(vec3<f32>(-293f, 159f, -717f), false), Struct_3(vec3<f32>(-692f, 1000f, -888f), false), Struct_3(vec3<f32>(-508f, 246f, 105f), false), Struct_3(vec3<f32>(373f, -1722f, 440f), true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: vec3<u32>) -> vec2<u32> {
    var var_0 = ~29165u;
    var var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 18u)];
    var var_2 = Struct_1(var_1.a, u_input.b, var_1.e, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, var_1.b), ~21402u) << (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(68848u, 28217u, 13709u), _wgslsmith_div_u32(u_input.b, 23377u)) % 32u), ~arg_0.b, _wgslsmith_mod_u32(~(arg_0.d >> (arg_3.x % 32u)), var_1.d)), _wgslsmith_sub_vec2_i32(~select(vec2<i32>(2147483647i, 10870i) << (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)), abs(vec2<i32>(u_input.a, arg_0.c.x)), !arg_1.x), reverseBits((vec2<i32>(24665i, 14893i) | var_1.e) & vec2<i32>(-9449i, 0i))));
    var var_3 = vec3<u32>(arg_0.b, var_1.d, _wgslsmith_clamp_u32(arg_3.x, ~(~_wgslsmith_sub_u32(64078u, u_input.b)), var_1.d & 1u));
    let var_4 = vec2<i32>(countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.e.x, 2147483647i, u_input.a, arg_0.e.x), vec4<i32>(var_1.c.x, var_1.e.x, u_input.a, 11791i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.e.x, var_1.e.x, -2147483647i, arg_0.c.x), vec4<i32>(arg_0.e.x, var_2.c.x, arg_0.c.x, var_1.c.x)), vec4<i32>(-43908i, u_input.a, u_input.a, 2147483647i), ~vec4<i32>(var_2.e.x, -11676i, var_2.c.x, -1i)))), 20830i);
    return vec2<u32>(abs(_wgslsmith_mod_u32(arg_0.b, ~(arg_0.b >> (arg_0.d % 32u)))), u_input.b);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = select(~(vec2<u32>(7818u, u_input.b) ^ countOneBits(min(vec2<u32>(79544u, 26274u), vec2<u32>(u_input.b, 11880u)))), _wgslsmith_mod_vec2_u32(reverseBits(~vec2<u32>(5634u, u_input.b) >> (func_3(arg_1.a, vec3<bool>(true, false, true), true, vec3<u32>(arg_1.a.d, 1u, u_input.b)) % vec2<u32>(32u))), vec2<u32>(12124u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(15275u, u_input.b, arg_1.a.d, 22720u), vec4<u32>(u_input.b, u_input.b, u_input.b, arg_1.a.d), vec4<u32>(4294967295u, arg_1.a.b, arg_0.d, u_input.b)), countOneBits(vec4<u32>(67204u, 29291u, 24345u, u_input.b))))), vec2<bool>(select(all(vec4<bool>(true, true, false, true)), any(vec3<bool>(true, true, true)), all(vec2<bool>(false, true)) | true), select(false, any(vec2<bool>(false, false)), !(arg_0.c.x == arg_1.a.e.x))));
    global0 = array<Struct_1, 18>();
    global1 = array<Struct_3, 24>();
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-139f, arg_1.a.a)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a + arg_0.a) + _wgslsmith_f_op_f32(ceil(583f)))))));
    global1 = array<Struct_3, 24>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1097f), -222f));
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.x * 419f), _wgslsmith_f_op_f32(-arg_1.a.x)) * _wgslsmith_f_op_vec2_f32(func_2(global0[_wgslsmith_index_u32(~1u, 18u)], Struct_2(Struct_1(1076f, 0u, vec2<i32>(u_input.a, 1i), 40100u, vec2<i32>(u_input.a, 2147483647i)), u_input.a)))) + vec2<f32>(-1507f, arg_1.a.x)) + arg_1.a.zx);
    let var_1 = false == all(vec2<bool>(true, true));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.x), -770f, !(!any(vec2<bool>(arg_0, arg_0)))))));
    global1 = array<Struct_3, 24>();
    let var_3 = _wgslsmith_div_vec4_i32(countOneBits(min(vec4<i32>(~u_input.a, 4233i, _wgslsmith_sub_i32(u_input.a, 24151i), u_input.a), vec4<i32>(u_input.a, ~u_input.a, u_input.a, u_input.a))), abs(~(vec4<i32>(4814i, 0i, -2147483647i, u_input.a) << (~vec4<u32>(17003u, 22482u, u_input.b, u_input.b) % vec4<u32>(32u)))));
    return 5331i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 18>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(step(-793f, -929f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1126f))))), u_input.b, -(vec2<i32>(func_1(true, Struct_3(vec3<f32>(-1000f, -839f, 137f), true)), abs(1i)) | (vec2<i32>(-1i) * -vec2<i32>(u_input.a, -1i))), ~u_input.b >> (_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b, 4294967295u, 0u), countOneBits(4294967295u)), func_3(global0[_wgslsmith_index_u32(u_input.b, 18u)], vec3<bool>(true, true, true), true, vec3<u32>(u_input.b, 0u, 0u)).x) % 32u), abs(vec2<i32>(0i, -17998i)));
    var var_1 = false;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(-1431f)), ~func_3(Struct_1(var_0.a, u_input.b, vec2<i32>(var_0.c.x, -1i), 0u, vec2<i32>(var_0.e.x, u_input.a)), vec3<bool>(false, false, false), true, vec3<u32>(u_input.b, 22859u, 44754u)).x | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 4294967295u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b, u_input.b, u_input.b, 0u), vec4<u32>(var_0.b, var_0.d, u_input.b, 4294967295u))), ~var_0.e & -var_0.e, ~(~(u_input.b ^ var_0.b)), abs(var_0.e)), 1i);
    var var_3 = 208f;
    var_1 = !(_wgslsmith_clamp_u32(14175u, _wgslsmith_div_u32(1u, _wgslsmith_div_u32(var_0.d, 30611u)), var_0.d) == 4294967295u);
    let var_4 = true;
    var var_5 = ~abs(abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(63899u, var_0.b, var_2.a.b, u_input.b), vec4<u32>(28867u, var_2.a.d, 4894u, 61142u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.d, var_2.a.d, 4315u, 912u), vec4<u32>(0u, 4294967295u, var_2.a.d, var_2.a.d)))));
    var_5 = vec4<u32>(_wgslsmith_mult_u32(~(~(28675u >> (var_5.x % 32u))), var_5.x), _wgslsmith_dot_vec4_u32(~select(~vec4<u32>(var_0.d, var_2.a.d, var_2.a.b, u_input.b), vec4<u32>(var_0.d, 57307u, var_2.a.b, u_input.b), true), ~(vec4<u32>(var_5.x, 8351u, var_2.a.d, var_0.b) << (~vec4<u32>(var_2.a.b, 15699u, var_0.b, var_5.x) % vec4<u32>(32u)))), 4294967295u, 58660u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.e.x);
}


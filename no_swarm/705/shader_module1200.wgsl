struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 97231u, 3159u, 18357u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_2 {
    global0 = vec4<u32>(~_wgslsmith_sub_u32(60615u, firstLeadingBit(1u)), ~global0.x, _wgslsmith_div_u32(~775u, ~u_input.a), ~(abs(~u_input.a) ^ ~arg_3.a.x));
    global0 = arg_3.a;
    return arg_3;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = -_wgslsmith_mult_vec2_i32(vec2<i32>(-(~12421i), ~countOneBits(arg_1.a.x)), vec2<i32>(35034i, _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a.x, -1i, arg_1.a.x, arg_1.a.x), vec4<i32>(arg_1.a.x, 2147483647i, 58338i, -30427i)))));
    global0 = vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, arg_0 << (0u % 32u), u_input.a), ~(~vec4<u32>(0u, 1361u, 33082u, global0.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(15503u, 51893u, 4294967295u, u_input.a) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.c.x, 87910u, 23671u, arg_0), vec4<u32>(arg_1.c.x, arg_0, 4294967295u, global0.x), vec4<u32>(u_input.a, 61465u, u_input.a, arg_0)) % vec4<u32>(32u)), vec4<u32>(firstTrailingBit(arg_0), _wgslsmith_dot_vec2_u32(vec2<u32>(7762u, 0u), vec2<u32>(20995u, 43697u)), select(1u, u_input.a, arg_1.b), ~arg_1.c.x))), ~(~global0.x), _wgslsmith_mult_u32(countOneBits(reverseBits(_wgslsmith_mult_u32(global0.x, 27673u))), ~(~(~0u))));
    let var_1 = Struct_1(arg_1.a, all(vec3<bool>(arg_1.b, arg_1.b, true & select(arg_1.b, false, arg_1.b))), global0.wxz);
    var var_2 = func_1(Struct_1(var_1.a, !var_1.b, (var_1.c << (~vec3<u32>(var_1.c.x, 0u, var_1.c.x) % vec3<u32>(32u))) >> (func_1(arg_1, var_1, vec2<bool>(var_1.b, false), Struct_2(vec4<u32>(41983u, arg_0, 1u, var_1.c.x))).a.zyx % vec3<u32>(32u))), Struct_1(~(~arg_1.a), arg_1.c.x > 0u, firstLeadingBit(min(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(u_input.a, global0.x, global0.x)), _wgslsmith_add_vec3_u32(vec3<u32>(global0.x, var_1.c.x, arg_0), global0.yxx)))), vec2<bool>(true, var_1.b), Struct_2(~(~vec4<u32>(0u, global0.x, 0u, 1u))));
    let var_3 = Struct_1(var_1.a, false, vec3<u32>(30128u >> (var_2.a.x % 32u), ~u_input.a, arg_1.c.x >> (_wgslsmith_mod_u32(select(1u, var_2.a.x, var_1.b), countOneBits(0u)) % 32u)));
    return countOneBits(vec4<u32>(~(~arg_0), 0u, ~arg_0, 1u));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec4<u32>) -> vec4<u32> {
    global0 = ~arg_2;
    var var_0 = vec3<bool>(any(vec3<bool>(arg_1.x, true, true && any(vec2<bool>(false, arg_1.x)))), true, all(!arg_1));
    var var_1 = arg_1.zxx;
    var var_2 = Struct_1(vec2<i32>(countOneBits(select(-1i, -10038i, true)), firstTrailingBit(i32(-1i) * -2147483647i)) >> (~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), arg_2.xyz), u_input.a) % vec2<u32>(32u)), true, arg_2.wzy & arg_2.wyx);
    var_0 = select(vec3<bool>(var_2.b, all(select(arg_1.yzz, vec3<bool>(false, arg_1.x, arg_1.x), all(vec3<bool>(true, false, var_2.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1181f))) < 1695f), arg_1.ywz, !(!(!(!arg_1.wyy))));
    return abs(_wgslsmith_add_vec4_u32(arg_2, (arg_2 & ~vec4<u32>(1u, 56384u, 1u, 15009u)) ^ ((vec4<u32>(59053u, u_input.a, 4294967295u, u_input.a) ^ vec4<u32>(14701u, var_2.c.x, 25822u, 4294967295u)) & ~vec4<u32>(31971u, 1u, u_input.a, arg_2.x))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> u32 {
    var var_0 = Struct_2(func_4(arg_1.wz, select(!select(arg_1, vec4<bool>(arg_1.x, true, false, arg_1.x), vec4<bool>(true, true, arg_1.x, true)), !select(vec4<bool>(arg_1.x, arg_1.x, true, false), vec4<bool>(arg_1.x, false, arg_1.x, false), arg_1.x), true), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(func_3(arg_0.a.x, Struct_1(vec2<i32>(2147483647i, 32790i), false, vec3<u32>(u_input.a, arg_0.a.x, u_input.a))), ~vec4<u32>(1u, 32091u, global0.x, 4294967295u)), abs(vec4<u32>(u_input.a, global0.x, u_input.a, 16439u)))));
    let var_1 = var_0.a.x;
    global0 = ~vec4<u32>(9974u, 25618u, 0u, _wgslsmith_div_u32(reverseBits(_wgslsmith_add_u32(0u, 1u)), 1u));
    var_0 = arg_0;
    var var_2 = ~global0.yz;
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(select(countOneBits(vec4<u32>(u_input.a, _wgslsmith_mod_u32(58003u, 42912u), 43848u, 18237u)), vec4<u32>(global0.x, func_2(func_1(Struct_1(vec2<i32>(-52761i, 54734i), false, vec3<u32>(global0.x, 0u, global0.x)), Struct_1(vec2<i32>(1i, 2147483647i), true, global0.zzy), vec2<bool>(false, false), Struct_2(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a))), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true))), ~u_input.a, 1u), false));
    let var_0 = _wgslsmith_f_op_f32(-1096f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, -182f))))));
    let var_1 = Struct_1(countOneBits(vec2<i32>(0i, ~(~(-69533i)))), all(select(vec4<bool>(u_input.a > global0.x, var_0 >= 1531f, any(vec3<bool>(false, true, true)), true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true))), select(vec3<u32>(4294967295u, _wgslsmith_sub_u32(0u, u_input.a), func_2(Struct_2(vec4<u32>(global0.x, 1u, 0u, 0u)), vec4<bool>(true, false, false, true))), vec3<u32>(_wgslsmith_add_u32(u_input.a, 1949u), ~global0.x, global0.x), vec3<bool>(any(vec2<bool>(false, true)), true, any(vec2<bool>(false, true)))) & func_4(!select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec4<bool>(true, true, true, true), func_3(1u, Struct_1(vec2<i32>(-23884i, 20080i), false, vec3<u32>(u_input.a, 4294967295u, 58221u)))).ywy);
    global0 = func_1(Struct_1(_wgslsmith_add_vec2_i32(min(var_1.a, var_1.a), vec2<i32>(var_1.a.x >> (43911u % 32u), firstLeadingBit(-2147483647i))), var_1.b, firstTrailingBit(vec3<u32>(_wgslsmith_div_u32(0u, 19462u), u_input.a, _wgslsmith_mod_u32(u_input.a, 1u)))), var_1, vec2<bool>(true, true), func_1(var_1, Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a.x, var_1.a.x), vec2<i32>(22717i, -34101i)), abs(vec2<i32>(var_1.a.x, var_1.a.x))), true, abs(vec3<u32>(var_1.c.x, 23885u, 20514u))), vec2<bool>(all(!vec4<bool>(false, var_1.b, false, true)), var_1.b), Struct_2(_wgslsmith_add_vec4_u32(func_4(vec2<bool>(var_1.b, false), vec4<bool>(true, var_1.b, var_1.b, true), vec4<u32>(12492u, 44831u, 35226u, 869u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c.x, var_1.c.x, u_input.a, global0.x), vec4<u32>(54258u, var_1.c.x, global0.x, 80626u)))))).a;
    global0 = vec4<u32>(_wgslsmith_mod_u32(10750u, ~15312u), 36261u, func_3(_wgslsmith_add_u32(4294967295u ^ _wgslsmith_add_u32(1u, u_input.a), func_4(!vec2<bool>(var_1.b, false), select(vec4<bool>(var_1.b, true, true, var_1.b), vec4<bool>(true, false, var_1.b, var_1.b), vec4<bool>(false, true, true, var_1.b)), min(vec4<u32>(3897u, 94175u, var_1.c.x, 0u), vec4<u32>(u_input.a, 57819u, u_input.a, var_1.c.x))).x), var_1).x, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_1.a.x, -var_1.a.x), max(_wgslsmith_dot_vec3_i32(vec3<i32>(-8498i, var_1.a.x, 35981i), vec3<i32>(var_1.a.x, var_1.a.x, var_1.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-38470i, 1i, -2147483647i, -2147483647i), vec4<i32>(var_1.a.x, -8454i, var_1.a.x, var_1.a.x))) | var_1.a.x), _wgslsmith_dot_vec3_u32(~reverseBits(_wgslsmith_div_vec3_u32(global0.zxz, var_1.c)), vec3<u32>(var_1.c.x ^ 0u, u_input.a, global0.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-260f * 211f), -1000f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1845f, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-609f, 663f)), true)))), vec2<f32>(var_0, 908f), vec2<bool>(all(vec2<bool>(var_1.b, false)), true))));
}


struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 19>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: array<vec2<bool>, 29>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: Struct_2) -> f32 {
    var var_0 = !vec3<bool>(!(true == arg_2.x), !arg_2.x, true);
    let var_1 = vec4<i32>(18167i, -34571i, _wgslsmith_mult_i32(35648i, 9889i), 0i);
    global2 = array<vec2<bool>, 29>();
    var var_2 = arg_3.b.a.yz;
    var var_3 = arg_3.b.a.x;
    return -1000f;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: bool) -> Struct_2 {
    let var_0 = ~select(vec2<i32>(2147483647i, ~10496i << (_wgslsmith_mult_u32(arg_2.x, 19939u) % 32u)), select(vec2<i32>(-54924i, -2147483647i), vec2<i32>(countOneBits(2147483647i), _wgslsmith_div_i32(1i, 1i)), arg_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, true), vec4<f32>(-792f, -947f, -631f, 492f), arg_0.xy, Struct_2(arg_1.a, arg_1))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(768f * 1000f)));
    let var_1 = arg_1;
    let var_2 = Struct_3(vec2<i32>(var_0.x, select(-2147483647i, 15242i, !(arg_2.x < 1u))), Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(71638u, var_1.a.x, 1u, 46024u), vec4<u32>(4294967295u, arg_2.x, 23324u, arg_1.a.x)), 0u, ~(arg_2.x & u_input.c.x)), Struct_1(var_1.a)), u_input.c, Struct_2(_wgslsmith_sub_vec3_u32(abs(u_input.a) ^ var_1.a, ~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_1.a.x, var_1.a.x), vec3<u32>(arg_1.a.x, 22189u, arg_1.a.x))), Struct_1(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_2.x, u_input.c.x), var_1.a))), arg_2.x & abs(firstTrailingBit(var_1.a.x ^ 1u)));
    var var_3 = false;
    let var_4 = all(!vec2<bool>(false, any(vec4<bool>(false, true, false, global1.x))));
    return Struct_2(_wgslsmith_add_vec3_u32(abs(max(abs(vec3<u32>(var_1.a.x, arg_2.x, arg_2.x)), u_input.a)), vec3<u32>(~(~u_input.c.x), _wgslsmith_mod_u32(arg_1.a.x, ~var_2.b.b.a.x), abs(~0u))), var_1);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> vec3<u32> {
    global1 = vec3<bool>(!(global1.x && any(global1.yz)) & any(!vec4<bool>(false, global1.x, global1.x, global1.x)), all(select(vec4<bool>(global1.x, false, true, true), !(!vec4<bool>(global1.x, global1.x, true, global1.x)), select(!vec4<bool>(false, true, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true), !global1.x))), arg_2 >= 4294967295u);
    var var_0 = 0i;
    global2 = array<vec2<bool>, 29>();
    let var_1 = vec2<i32>(-1i, 1896i);
    let var_2 = func_2(!vec4<bool>(true, global1.x, true | global1.x, !global1.x), func_2(!select(vec4<bool>(global1.x, false, global1.x, global1.x), !vec4<bool>(global1.x, global1.x, false, false), all(vec4<bool>(global1.x, global1.x, true, false))), func_2(!(!vec4<bool>(global1.x, true, false, global1.x)), arg_1.b, arg_1.a.zy, global1.x).b, firstTrailingBit(arg_1.b.a.yz), true).b, vec2<u32>(1u, arg_2), select(global1.x, false, !(arg_2 != firstTrailingBit(arg_2)))).b;
    return _wgslsmith_clamp_vec3_u32(~(max(u_input.c.yzx, var_2.a) << (_wgslsmith_sub_vec3_u32(u_input.b.yyx, vec3<u32>(4294967295u, 4294967295u, 1u)) % vec3<u32>(32u))), abs(var_2.a), vec3<u32>(12552u, 23112u, var_2.a.x));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = select(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(abs(u_input.c), vec4<u32>(u_input.c.x, 13685u, 74889u, u_input.a.x) >> (u_input.b % vec4<u32>(32u))), 1u << (u_input.b.x % 32u), u_input.b.x ^ u_input.b.x), ~(~vec3<u32>(19215u, 57823u, u_input.a.x) << (u_input.a % vec3<u32>(32u)))), func_4(arg_2.x, func_2(vec4<bool>(true, global1.x, global1.x, any(vec4<bool>(true, true, global1.x, global1.x))), Struct_1(u_input.b.yyx), vec2<u32>(2777u, reverseBits(u_input.b.x)), any(!vec4<bool>(global1.x, global1.x, global1.x, true))), 120940u), false);
    global0 = array<vec4<i32>, 19>();
    global0 = array<vec4<i32>, 19>();
    var var_1 = Struct_3(arg_0, Struct_2(func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1142f + arg_2.x), -534f)), Struct_2(u_input.b.xyy ^ vec3<u32>(var_0.x, u_input.c.x, var_0.x), func_2(vec4<bool>(false, true, true, global1.x), Struct_1(u_input.a), var_0.yy, false).b), ~func_2(vec4<bool>(false, global1.x, global1.x, false), Struct_1(vec3<u32>(u_input.a.x, 34995u, u_input.c.x)), vec2<u32>(6954u, var_0.x), global1.x).b.a.x), Struct_1(u_input.b.yzz)), ~(~vec4<u32>(62006u, 23608u, 0u, var_0.x) | (u_input.c & vec4<u32>(32136u, 1u, var_0.x, 11211u))) << (vec4<u32>(min(~u_input.c.x, abs(1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 80702u), vec2<u32>(var_0.x, 1u)), ~var_0.x, u_input.c.x) % vec4<u32>(32u)), func_2(!(!vec4<bool>(global1.x, true, global1.x, false)), func_2(!select(vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, true, global1.x), global1.x), Struct_1(min(vec3<u32>(1u, u_input.a.x, u_input.b.x), u_input.c.yzz)), vec2<u32>(31247u, u_input.b.x), (arg_1 != arg_1) && true).b, _wgslsmith_clamp_vec2_u32(~vec2<u32>(16538u, 59364u), ~(var_0.yz | var_0.yy), u_input.a.yy), true), 30941u);
    let var_2 = countOneBits(_wgslsmith_mod_vec3_i32((select(vec3<i32>(arg_1, 16563i, 2147483647i), vec3<i32>(1i, 0i, var_1.a.x), vec3<bool>(global1.x, false, true)) & vec3<i32>(var_1.a.x, arg_1, arg_0.x)) ^ -firstTrailingBit(vec3<i32>(-33256i, 2147483647i, arg_1)), vec3<i32>(select(firstLeadingBit(var_1.a.x), -2147483647i, global1.x | global1.x), arg_0.x, ~var_1.a.x)));
    return Struct_1(~vec3<u32>(32966u, ~(~1u), 80107u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x || (true && !(!global1.x || global1.x));
    global0 = array<vec4<i32>, 19>();
    var var_1 = Struct_2(vec3<u32>(u_input.c.x, 32671u, ~u_input.a.x), func_1(abs(~vec2<i32>(1i, 1i)), 1i, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(260f - 945f), _wgslsmith_f_op_f32(-268f + 1000f))), 621f)));
    var_1 = Struct_2(var_1.a, var_1.b);
    var var_2 = Struct_2(~func_2(select(vec4<bool>(global1.x, true, false, var_0), vec4<bool>(true, true, false, true), global1.x), var_1.b, u_input.a.zz << (u_input.b.zy % vec2<u32>(32u)), !any(global2[_wgslsmith_index_u32(var_1.a.x, 29u)])).b.a, Struct_1(vec3<u32>(_wgslsmith_clamp_u32(0u, ~u_input.a.x, 36044u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.a.x), ~var_1.b.a.yz), _wgslsmith_mod_u32(~u_input.c.x, 38845u))));
    global1 = vec3<bool>(false, !(any(vec3<bool>(var_0, true, false)) && true), any(!vec2<bool>(true, global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-488f, 385f)), _wgslsmith_f_op_f32(max(517f, -1230f))) + -870f)), vec3<f32>(856f, -804f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-575f, 243f))))));
}


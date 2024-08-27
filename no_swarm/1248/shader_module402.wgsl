struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: Struct_1;

var<private> global2: vec3<bool>;

var<private> global3: Struct_3 = Struct_3(Struct_2(true, true, vec2<bool>(true, true), Struct_1(1u, -915f, vec4<f32>(-947f, -1251f, -202f, -586f), vec3<f32>(1000f, -478f, -2008f))));

var<private> global4: vec4<u32> = vec4<u32>(24694u, 1u, 106374u, 1u);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: i32) -> vec4<i32> {
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    global2 = !(!(!(!(!vec3<bool>(global3.a.c.x, false, global3.a.c.x)))));
    let var_0 = u_input.a.x;
    var var_1 = !vec3<bool>(false, global3.a.b, global3.a.a);
    return vec4<i32>(-arg_0, arg_0, _wgslsmith_mod_i32(arg_0, ~abs(-14614i)), ~_wgslsmith_div_i32(abs(arg_0), arg_0));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_3) -> i32 {
    var var_0 = Struct_1(~min(_wgslsmith_div_u32(firstLeadingBit(5886u), _wgslsmith_div_u32(6995u, u_input.c)), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.d.b)), 1005f)) - _wgslsmith_f_op_f32(arg_1.c.x + -722f)), _wgslsmith_f_op_vec4_f32(-arg_0.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) + global1.b), _wgslsmith_f_op_f32(f32(-1f) * -499f), _wgslsmith_div_f32(-1066f, _wgslsmith_f_op_f32(-global1.c.x))) - _wgslsmith_f_op_vec3_f32(-arg_0.c.zyw)));
    global2 = select(vec3<bool>(arg_3.a.b, true, all(select(vec4<bool>(false, global3.a.a, true, true), !vec4<bool>(true, global3.a.b, global3.a.c.x, false), !global2.x))), vec3<bool>(!all(select(vec4<bool>(global3.a.b, global3.a.a, global3.a.a, true), vec4<bool>(false, false, true, global3.a.a), vec4<bool>(global2.x, global2.x, global2.x, true))), !(_wgslsmith_f_op_f32(sign(-163f)) < arg_0.b), any(global2.zy)), select(vec3<bool>(true, select(false, true, true || global3.a.c.x), any(!vec3<bool>(true, false, global3.a.b))), !(!vec3<bool>(arg_3.a.b, global3.a.a, global3.a.c.x)), true));
    let var_1 = min(~(vec4<i32>(u_input.b, ~u_input.b, abs(u_input.b), -1401i) ^ vec4<i32>(-u_input.a.x, -2147483647i, 43780i, -u_input.b)), _wgslsmith_sub_vec4_i32(~select(vec4<i32>(u_input.b, 3142i, u_input.a.x, u_input.a.x), -vec4<i32>(-37735i, u_input.a.x, u_input.a.x, u_input.a.x), true), countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(4279i, 57671i, 15731i, u_input.b), vec4<i32>(u_input.a.x, 18921i, 577i, u_input.b)))));
    var var_2 = Struct_2((true && (_wgslsmith_f_op_f32(var_0.c.x - -452f) <= arg_1.d.x)) & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.c.x)) - 1011f) > _wgslsmith_f_op_f32(ceil(arg_3.a.d.d.x))), !(any(!vec3<bool>(global3.a.b, false, global3.a.a)) | true), vec2<bool>(false, global3.a.a), Struct_1(_wgslsmith_add_u32(~firstTrailingBit(4294967295u), ~global3.a.d.a), _wgslsmith_f_op_f32(1000f - -795f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1.c + _wgslsmith_f_op_vec4_f32(arg_3.a.d.c + vec4<f32>(1340f, 870f, 2058f, -1660f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(153f, global1.d.x, -1590f, arg_0.d.x) * _wgslsmith_f_op_vec4_f32(arg_1.c + global3.a.d.c)), !(!global2.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, arg_3.a.d.d.x, -1231f)), vec3<f32>(arg_3.a.d.c.x, -1793f, -251f), true))));
    var var_3 = arg_3;
    return 31333i;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>) -> Struct_2 {
    global2 = vec3<bool>(arg_0.x < func_3(Struct_1(~global4.x, _wgslsmith_f_op_f32(floor(-114f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.a.d.b, global3.a.d.d.x, 300f, -959f), global1.c)), global1.c.wwy), Struct_1(~global4.x, _wgslsmith_f_op_f32(trunc(global3.a.d.b)), _wgslsmith_f_op_vec4_f32(-global3.a.d.c), _wgslsmith_f_op_vec3_f32(max(global3.a.d.d, global1.d))), _wgslsmith_mod_vec2_u32(global4.wy << (vec2<u32>(global3.a.d.a, 4294967295u) % vec2<u32>(32u)), vec2<u32>(26617u, 14826u) << (global4.wy % vec2<u32>(32u))), Struct_3(Struct_2(true, global2.x, vec2<bool>(false, global2.x), global3.a.d))), any(!vec2<bool>(global2.x != true, !global3.a.b)), true);
    global0 = array<u32, 27>();
    let var_0 = !select(!vec2<bool>(global2.x, false), vec2<bool>(global3.a.b, false), global3.a.c.x);
    var var_1 = vec4<bool>(u_input.b >= arg_0.x, global2.x, global2.x, true);
    global3 = Struct_3(global3.a);
    return global3.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_3) -> bool {
    var var_0 = vec2<u32>(~u_input.c, ~global4.x);
    global4 = select(~(~arg_1), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.ywy, vec3<u32>(16729u, var_0.x, arg_2.a.d.a)), 0u, _wgslsmith_div_u32(0u, arg_0.d.a), countOneBits(global3.a.d.a))), arg_1), vec4<bool>(false, all(vec2<bool>(true, true)) && select(global3.a.b, global2.x, arg_2.a.a), true && func_2(vec4<i32>(u_input.b, 2147483647i, u_input.b, 0i), vec2<i32>(u_input.a.x, u_input.b)).a, false));
    var var_1 = select(select(vec2<bool>(true, global2.x), global2.zy, func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 0i, u_input.b, u_input.b), vec4<i32>(u_input.b, 104913i, u_input.b, u_input.a.x)) >> (_wgslsmith_sub_vec4_u32(arg_1, arg_1) % vec4<u32>(32u)), vec2<i32>(u_input.a.x & u_input.a.x, ~(-1i))).c), arg_2.a.c, select(global2.x, true, global3.a.c.x));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(global2.x && any(global2.xz), global2.x, func_4(func_2(_wgslsmith_add_vec4_i32(func_1(u_input.a.x), vec4<i32>(u_input.b, u_input.a.x, 1i, u_input.a.x)), ~u_input.a.xy >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(5658u, 1u), vec2<u32>(3022u, global1.a), vec2<u32>(4294967295u, u_input.d)) % vec2<u32>(32u))), (vec4<u32>(global3.a.d.a, 19625u, 1u, global1.a) ^ select(vec4<u32>(global1.a, u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40217u, 27u)], 27u)], 8859u), vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 27u)], 0u, 110648u), true)) >> (vec4<u32>(_wgslsmith_mod_u32(4294967295u, 85953u), ~global1.a, 1u, ~u_input.c) % vec4<u32>(32u)), Struct_3(Struct_2(global3.a.b, false, select(global3.a.c, global2.zx, global3.a.c), func_2(vec4<i32>(u_input.b, 1i, 6747i, u_input.b), u_input.a.yz).d))), true);
    let var_1 = all(var_0.zyy);
    var var_2 = func_2((~firstTrailingBit(vec4<i32>(u_input.b, -41161i, -1i, 2147483647i)) >> (vec4<u32>(4294967295u, 1u, u_input.d | 43537u, 0u) % vec4<u32>(32u))) ^ -vec4<i32>(i32(-1i) * -1i, 1i, -u_input.a.x, -31149i), u_input.a.yz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(max(0u, ~(~0u)), global0[_wgslsmith_index_u32(34533u, 27u)]), vec3<f32>(_wgslsmith_f_op_f32(select(-142f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.d.b, 1398f), _wgslsmith_f_op_f32(floor(global1.c.x)))), var_0.x)), _wgslsmith_f_op_f32(var_2.d.c.x + _wgslsmith_f_op_f32(-var_2.d.c.x)), _wgslsmith_f_op_f32(max(global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.d.d.x, global1.d.x)) - _wgslsmith_f_op_f32(max(var_2.d.b, 223f)))))));
}


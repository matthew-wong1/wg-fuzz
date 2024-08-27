struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(0u, 4294967295u, 1u, 1u, 1u, 4294967295u, 1u, 4294967295u, 0u, 20644u, 5348u, 69285u);

var<private> global1: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_4) -> bool {
    global0 = array<u32, 12>();
    let var_0 = _wgslsmith_mult_vec3_u32(~(~vec3<u32>(0u, 1u, 4294967295u) << (reverseBits(~vec3<u32>(u_input.c.x, global0[_wgslsmith_index_u32(45872u, 12u)], 0u)) % vec3<u32>(32u))), vec3<u32>(firstTrailingBit(~(~24880u)), 86648u, u_input.c.x));
    let var_1 = arg_0;
    global1 = var_1.a;
    global0 = array<u32, 12>();
    return !all(vec3<bool>(false, any(vec2<bool>(true, false)), true));
}

fn func_1(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: u32) -> vec4<bool> {
    let var_0 = Struct_3(Struct_1(~(-2147483647i)));
    global1 = Struct_1(arg_1.x);
    global1 = Struct_1(_wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(-2147483647i, arg_1.x, -1i, var_0.a.a) & vec4<i32>(-2147483647i, global1.a, -1i, arg_1.x), vec4<i32>(arg_1.x, -17648i, arg_1.x, var_0.a.a)), u_input.a));
    var var_1 = select(vec2<bool>(true, (func_2(Struct_3(var_0.a), Struct_1(-2147483647i), Struct_4(vec2<bool>(false, arg_0.d.a.x))) == (327f > arg_0.b)) && func_2(var_0, var_0.a, Struct_4(vec2<bool>(arg_0.c, false)))), select(arg_0.d.a.zx, vec2<bool>(!arg_0.c, true), vec2<bool>(arg_0.d.e.x, arg_0.d.a.x)), !vec2<bool>(select(true, any(vec4<bool>(false, arg_0.c, arg_0.d.a.x, true)), arg_0.b != arg_0.b), any(vec3<bool>(arg_0.d.e.x, true, arg_0.d.e.x))));
    global0 = array<u32, 12>();
    return arg_0.d.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = vec3<u32>(30157u, global0[_wgslsmith_index_u32(~4294967295u, 12u)], global0[_wgslsmith_index_u32(75817u, 12u)]);
    global0 = array<u32, 12>();
    var var_1 = Struct_2(!vec4<bool>(!func_1(Struct_5(u_input.c, arg_2, true, Struct_2(arg_1, arg_2, -157f, u_input.a.wzw, vec3<bool>(true, true, arg_1.x))), vec2<i32>(-63823i, 2147483647i), 69834u).x, false | (false & arg_1.x), all(!arg_1), all(vec4<bool>(arg_1.x, false, false, arg_1.x)) & true), 163f, _wgslsmith_f_op_f32(-168f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -367f) - -185f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - -907f))), vec3<i32>(0i & abs(global1.a), u_input.a.x, firstLeadingBit(arg_3.a)), !arg_1.yyz);
    let var_2 = arg_1.yw;
    global1 = arg_3;
    return select(vec2<bool>(!any(vec3<bool>(false, arg_1.x, var_2.x)), arg_1.x), vec2<bool>(true, true), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 12>();
    let var_0 = select(vec4<bool>(true, true, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(2495u, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 12u)], 1u)) < global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(~global0[_wgslsmith_index_u32(1u, 12u)], 0u >> (u_input.c.x % 32u), false), 12u)], 12u)], all(vec4<bool>(false, true, true, true))), !(!select(vec4<bool>(true, true, true, true), func_1(Struct_5(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], 75881u, 8010u, 12708u), -1024f, true, Struct_2(vec4<bool>(false, true, true, true), -877f, 1194f, u_input.a.xxy, vec3<bool>(false, false, true))), u_input.b, 4294967295u), false)), all(func_1(Struct_5(vec4<u32>(global0[_wgslsmith_index_u32(75722u, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], 12u)], 4294967295u, global0[_wgslsmith_index_u32(u_input.c.x, 12u)]), _wgslsmith_div_f32(890f, -432f), true, Struct_2(vec4<bool>(true, true, false, false), -561f, -914f, vec3<i32>(-27977i, global1.a, u_input.a.x), vec3<bool>(true, true, false))), -vec2<i32>(-2147483647i, global1.a), global0[_wgslsmith_index_u32(0u, 12u)]).xx));
    let var_1 = Struct_4(select(select(vec2<bool>(true, true), select(var_0.yz, select(var_0.wz, vec2<bool>(true, var_0.x), var_0.zz), var_0.x), select(!vec2<bool>(true, var_0.x), var_0.xw, !vec2<bool>(true, var_0.x))), func_3(Struct_1(~0i), !select(vec4<bool>(false, false, var_0.x, true), var_0, var_0.x), _wgslsmith_f_op_f32(-1119f - -524f), Struct_1(-1i)), select(!(!var_0.yx), select(var_0.zx, vec2<bool>(var_0.x, false), select(var_0.xz, var_0.yy, true)), ~1u >= abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 12u)]))));
    let var_2 = !var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(~(~(~vec3<u32>(0u, global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]))), u_input.c.wzx), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-1i, -4059i), 26511i, ~(-global1.a)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(1i, u_input.a.x, 17730i)), vec3<i32>(1411i, global1.a, u_input.b.x)), (u_input.a.xyz << (vec3<u32>(u_input.c.x, 4294967295u, 1u) % vec3<u32>(32u))) << (reverseBits(u_input.c.xwy) % vec3<u32>(32u)))));
}


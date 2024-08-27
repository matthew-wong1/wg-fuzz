struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: Struct_3 = Struct_3(vec4<u32>(4294967295u, 18530u, 1u, 85617u), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(2000f, 556f, -1000f), vec2<u32>(6947u, 1u))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> Struct_4 {
    var var_0 = ~(-3471i);
    var var_1 = Struct_2(global1.b.a);
    var var_2 = 0i;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(108f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -366f), 378f, true))) * var_1.a.b.x);
    let var_4 = Struct_4(vec3<bool>(true, false, true), (1u != _wgslsmith_sub_u32(~arg_1, _wgslsmith_mod_u32(arg_1, global1.a.x))) || true, u_input.b.yy);
    return Struct_4(var_4.a, all(select(vec2<bool>(var_4.b && var_4.b, true), vec2<bool>(all(var_4.a), true), true)), abs(~vec2<u32>(var_1.a.a.x, 110007u)));
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> vec3<i32> {
    var var_0 = vec4<u32>(1u, ~max(~min(global1.b.a.a.x, arg_0), arg_1.c.x), 1u & arg_1.c.x, ~0u);
    global0 = max(u_input.c ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, u_input.a.x, -2147483647i, 0i), u_input.a), -2147483647i);
    let var_1 = 1557f;
    var var_2 = 188f;
    let var_3 = min(global1.a.yxy | max(reverseBits(~vec3<u32>(63709u, 54224u, arg_1.c.x)), min(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 1u, arg_0), var_0.ywy), ~vec3<u32>(global1.a.x, 53452u, 1u))), ~_wgslsmith_mod_vec3_u32(~firstTrailingBit(vec3<u32>(48557u, var_0.x, var_0.x)), u_input.b));
    return vec3<i32>(firstLeadingBit(~(-select(-2147483647i, 31397i, false))), u_input.c, 14717i);
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_4, arg_3: vec3<i32>) -> u32 {
    var var_0 = arg_2;
    return ~65049u;
}

fn func_1() -> f32 {
    let var_0 = 1u;
    global0 = u_input.c ^ min(u_input.a.x, 0i);
    let var_1 = reverseBits(func_4(_wgslsmith_f_op_vec2_f32(floor(global1.b.a.b.xz)), !all(vec4<bool>(true, true, true, true)), Struct_4(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), true), any(vec3<bool>(true, true, true)), _wgslsmith_div_vec2_u32(u_input.b.yx, _wgslsmith_div_vec2_u32(u_input.b.xz, vec2<u32>(4294967295u, 0u)))), func_3(4294967295u, func_2(global1.a.zxx, 8448u & u_input.b.x))));
    var var_2 = Struct_3(~global1.a, Struct_2(global1.b.a));
    let var_3 = vec3<bool>(!(!(global1.a.x >= global1.a.x)), any(!(!func_2(var_2.a.zyw, var_2.a.x).a)), true && (func_2(vec3<u32>(var_0, 12184u, var_2.b.a.a.x) >> (vec3<u32>(var_0, u_input.b.x, 0u) % vec3<u32>(32u)), firstTrailingBit(var_2.a.x)).b | any(vec4<bool>(true, true, true, true))));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    global0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.a.b.x))));
    let var_2 = Struct_5(global1.b, Struct_2(global1.b.a));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.b.a.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.b.a.b.x - -1772f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.b.a.b.x)) * _wgslsmith_f_op_f32(trunc(-607f)))))));
    var var_4 = global1.b.a;
    let var_5 = var_2.a.a;
    let var_6 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-144f, 187f, true)))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.x)))), true);
    var var_7 = firstLeadingBit(vec3<i32>(select(firstLeadingBit(u_input.a.x), u_input.c, select(false, var_6.x, var_6.x)), 1i, 1268i)) & _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.xzw >> (global1.a.xzx % vec3<u32>(32u)), vec3<i32>(-2147483647i, -u_input.a.x, -u_input.c), reverseBits(reverseBits(u_input.a.xyz))), u_input.a.xxw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-724f, _wgslsmith_f_op_f32(max(1331f, 253f)))), abs(~(~(80842u >> (global1.a.x % 32u)))), 766f);
}


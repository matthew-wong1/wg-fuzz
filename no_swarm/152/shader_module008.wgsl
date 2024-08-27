struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(0i, -20958i), Struct_1(vec3<bool>(false, false, false)), vec3<bool>(true, true, false));

var<private> global1: bool = false;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> f32 {
    return -201f;
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> vec3<bool> {
    global1 = (_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global0.a & global0.a, global0.a), 1i) << (u_input.c % 32u)) < firstLeadingBit(u_input.e);
    var var_0 = global0.b;
    global1 = true;
    global1 = select(false, true, global0.b.a.x == true);
    let var_1 = !var_0.a;
    return var_0.a;
}

fn func_2() -> vec4<i32> {
    let var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(u_input.c, 0u) >> (select(1u, u_input.c, global0.c.x) % 32u), _wgslsmith_sub_u32(~u_input.c, u_input.c & u_input.c), u_input.c), vec3<u32>(4294967295u, 40714u, u_input.c));
    var var_1 = Struct_2(firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x ^ 0i, 1i), max(~u_input.a.xy, vec2<i32>(20362i, -4788i)))), global0.b, !(!select(vec3<bool>(false, global0.b.a.x, global0.b.a.x), func_3(global0.a.x, vec3<f32>(731f, 462f, -1000f)), vec3<bool>(true, true, global0.b.a.x))));
    var_1 = Struct_2(~vec2<i32>(i32(-1i) * -2147483647i, ~(-35002i)) ^ -vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(114401i, -35037i, global0.a.x, -2147483647i), vec4<i32>(69043i, var_1.a.x, global0.a.x, var_1.a.x))), Struct_1(vec3<bool>(false, !all(vec4<bool>(false, false, false, global0.b.a.x)), _wgslsmith_sub_i32(var_1.a.x, 1i) >= -19337i)), select(var_1.c, vec3<bool>(var_1.c.x, var_1.c.x, global0.c.x), vec3<bool>(func_3(1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-495f, 183f, 490f))).x, true, !(!var_1.c.x))));
    var_1 = Struct_2(vec2<i32>(countOneBits(1i), 1i) | vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(14074i, u_input.a.x, u_input.d, global0.a.x), vec4<i32>(-2147483647i, -2147483647i, 23221i, global0.a.x)) | global0.a.x), Struct_1(var_1.c), select(select(var_1.b.a, vec3<bool>(false, select(var_1.b.a.x, var_1.c.x, true), var_1.b.a.x), vec3<bool>(global0.b.a.x, true, !global0.b.a.x)), !global0.c, var_1.b.a.x));
    var var_2 = !global0.c.x;
    return vec4<i32>(-1i ^ -(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, var_1.a.x, -1i, -3404i), vec4<i32>(46628i, u_input.d, -1i, -2147483647i))), i32(-1i) * -global0.a.x, ~global0.a.x, _wgslsmith_sub_i32(2147483647i, _wgslsmith_mult_i32(0i, firstTrailingBit(global0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(u_input.c & ~0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2134f + -1607f)), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-1000f * -766f))), -1137f))));
    global0 = Struct_2(firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, 0i, -48143i, 39060i), vec4<i32>(1i, u_input.d, 0i, global0.a.x)), func_2()), u_input.d)), global0.b, global0.c);
    var var_1 = select(select(!vec2<bool>(true, !global0.c.x), !select(!vec2<bool>(global0.c.x, global0.c.x), vec2<bool>(false, true), vec2<bool>(global0.c.x, global0.c.x)), global0.b.a.yz), global0.b.a.zy, vec2<bool>(!(!any(global0.c)), !(true != (global0.c.x && false))));
    var_1 = global0.c.zz;
    global0 = Struct_2(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(min(global0.a, vec2<i32>(23213i, -20314i)), vec2<i32>(u_input.a.x, 41955i) >> (vec2<u32>(60562u, 39598u) % vec2<u32>(32u))), min(global0.a, u_input.a.zx) << (firstTrailingBit(vec2<u32>(1u, u_input.c)) % vec2<u32>(32u))), -select(~vec2<i32>(0i, 2147483647i), vec2<i32>(u_input.e, global0.a.x), true)), global0.b, global0.b.a);
    global1 = all(global0.b.a);
    var var_2 = Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(~_wgslsmith_mult_i32(-14459i, u_input.d), 0i), ~(select(vec2<i32>(global0.a.x, global0.a.x), vec2<i32>(global0.a.x, -2147483647i), global0.c.zz) >> (~vec2<u32>(u_input.c, 1u) % vec2<u32>(32u)))), Struct_1(func_3(-1i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1540f, var_0, var_0) + vec3<f32>(-302f, var_0, 790f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(685f, -527f, var_0)), global0.b.a)))), !global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(1i, abs(global0.a));
}


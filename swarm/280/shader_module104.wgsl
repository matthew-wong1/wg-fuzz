struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32>;

var<private> global1: array<Struct_3, 20>;

var<private> global2: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: i32) -> u32 {
    global0 = array<vec3<u32>, 32>();
    var var_0 = Struct_2(Struct_1(arg_1, select(-1i, _wgslsmith_clamp_i32(arg_2, arg_3, arg_2) & arg_0, all(vec3<bool>(false, false, false))), 36594i, u_input.c.x, vec4<bool>(true, true, true, true)), true, -2428f);
    global2 = u_input.a.x;
    global0 = array<vec3<u32>, 32>();
    global2 = arg_0;
    return 952u;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: bool) -> Struct_2 {
    var var_0 = select(vec2<bool>(true, true), arg_0.e.yy, arg_0.e.xx);
    let var_1 = Struct_2(arg_0, true, _wgslsmith_f_op_f32(-1107f - 105f));
    global2 = -14211i;
    let var_2 = true;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a + 164f) + 515f), _wgslsmith_div_f32(278f, _wgslsmith_f_op_f32(min(-772f, 600f))))), 1i, _wgslsmith_sub_i32(max(var_1.a.b, abs(var_1.a.c)), _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0.c, 1i), vec2<i32>(arg_0.b, var_1.a.c))), ~(~func_3(0i, 317f, -2147483647i, 2147483647i)), vec4<bool>(false, var_0.x, any(select(vec3<bool>(false, false, true), vec3<bool>(true, arg_3, true), true)), true)), any(var_1.a.e.zxw), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)))));
    return var_1;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: vec4<u32>) -> i32 {
    return 17909i;
}

fn func_1() -> Struct_5 {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(func_4(Struct_3(func_2(Struct_1(-517f, -54118i, u_input.a.x, 47113u, vec4<bool>(false, true, true, true)), -2223f, true, true), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.d.x), 32u)], Struct_2(Struct_1(783f, -1i, u_input.a.x, 0u, vec4<bool>(false, true, false, false)), true, 1017f)), func_2(Struct_1(551f, u_input.a.x, -45299i, 77022u, vec4<bool>(true, true, false, true)), _wgslsmith_f_op_f32(min(2296f, -419f)), all(vec3<bool>(false, true, true)), any(vec2<bool>(true, false))), false, _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.d, u_input.d), reverseBits(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x)))), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.ww, vec2<i32>(-12424i, 2147483647i), vec2<i32>(u_input.a.x, -34977i)) >> (~vec2<u32>(0u, 24448u) % vec2<u32>(32u)), ~vec2<i32>(u_input.a.x, 0i))), select(_wgslsmith_mult_i32(41213i, 3535i), u_input.a.x, ~firstLeadingBit(31860i) == u_input.a.x), u_input.a.x);
    var var_1 = vec4<u32>(~abs(30035u), _wgslsmith_dot_vec2_u32(vec2<u32>(63157u, abs(13669u)), u_input.c.xz), ~countOneBits(4294967295u), u_input.d.x);
    let var_2 = _wgslsmith_mod_i32(~1i, min(var_0.x, firstTrailingBit(~(-var_0.x))));
    global1 = array<Struct_3, 20>();
    var var_3 = Struct_5(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))));
    return Struct_5(_wgslsmith_dot_vec2_u32(reverseBits(~_wgslsmith_div_vec2_u32(vec2<u32>(7100u, 1u), vec2<u32>(82630u, 4294967295u))), var_1.zz), var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.c.x;
    global2 = -1i;
    let var_1 = func_1();
    let var_2 = Struct_3(Struct_2(func_2(Struct_1(var_1.b, _wgslsmith_sub_i32(15423i, u_input.a.x), ~(-3890i), var_0, vec4<bool>(true, true, false, true)), _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-489f * -337f)), _wgslsmith_f_op_f32(step(var_1.b, var_1.b)) > _wgslsmith_f_op_f32(-var_1.b), any(vec4<bool>(false, false, false, false)) | any(vec3<bool>(true, false, true))).a, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1014f)))), u_input.c, Struct_2(Struct_1(-257f, u_input.a.x, u_input.a.x, ~(0u | var_0), vec4<bool>(true, true, true, true)), !any(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), _wgslsmith_f_op_f32(-func_2(func_2(Struct_1(var_1.b, u_input.a.x, -2147483647i, u_input.c.x, vec4<bool>(false, false, false, false)), var_1.b, false, true).a, _wgslsmith_f_op_f32(-725f + var_1.b), true, true).a.a)));
    var var_3 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -989f), var_1.b)), var_1.a | ~abs(11458u), u_input.d, -2147483647i);
}


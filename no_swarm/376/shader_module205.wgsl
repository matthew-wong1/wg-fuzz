struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(916f, -238f, -363f, 770f), -628f);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 5>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_2(1447f);
    return u_input.a.yz;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> Struct_1 {
    global2 = array<Struct_1, 5>();
    var var_0 = func_3();
    var var_1 = arg_1.x;
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d.x, u_input.d.x) | _wgslsmith_mult_u32(~min(u_input.d.x, reverseBits(57550u)), 57u), 5u)];
    global0 = global2[_wgslsmith_index_u32(u_input.d.x, 5u)];
    return Struct_1(global1.a, -1422f);
}

fn func_1() -> f32 {
    let var_0 = true;
    var var_1 = select(select(~vec3<i32>(u_input.b, u_input.e, 2147483647i), vec3<i32>(u_input.e, u_input.e, -1i) >> (u_input.d % vec3<u32>(32u)), vec3<bool>(false | var_0, var_0 && var_0, u_input.b >= u_input.b)) | (reverseBits(vec3<i32>(-1i, -14897i, -16597i)) >> (u_input.d % vec3<u32>(32u))), vec3<i32>(countOneBits(-(~(-2147483647i))), 0i, firstTrailingBit(~(-2147483647i))), true);
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-310f))));
    global0 = func_2(-_wgslsmith_dot_vec4_i32(select(max(vec4<i32>(-1i, 43960i, -7881i, var_1.x), vec4<i32>(u_input.b, 0i, var_1.x, -2147483647i)), ~vec4<i32>(61679i, var_1.x, -17083i, -18014i), select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, true, false, var_0), false)), vec4<i32>(firstTrailingBit(-13607i), ~(-1i), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 52476i, u_input.b, var_1.x), vec4<i32>(var_1.x, u_input.b, 1i, -2147483647i)))), !vec3<bool>(var_0 & var_0, true, true && all(vec2<bool>(true, var_0))));
    var_2 = _wgslsmith_f_op_f32(-global1.b);
    return global1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(f32(-1f) * -476f), _wgslsmith_f_op_f32(select(global1.a.x, 375f, true)), _wgslsmith_f_op_f32(f32(-1f) * -592f)), _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(-global1.a.x)));
    let var_1 = u_input.d.x;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -582f);
    let var_3 = func_2(u_input.a.x, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, var_0.b <= -440f, false)), select(vec3<bool>(true, all(vec2<bool>(true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), true));
    var var_4 = any(vec2<bool>(true, true));
    var var_5 = any(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), !vec2<bool>(all(vec3<bool>(false, false, false)), true), vec2<bool>(all(vec2<bool>(true, false)), false)));
    var_5 = 4294967295u > var_1;
    var var_6 = ~_wgslsmith_clamp_i32(~(-u_input.a.x), _wgslsmith_sub_i32(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.c), vec2<i32>(u_input.a.x, 1i) & u_input.a.zz)), u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(~(~(~u_input.d.xz)), _wgslsmith_add_vec2_u32(u_input.d.yx, ~u_input.d.yx >> (vec2<u32>(0u, u_input.d.x) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-1482f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1567f)) - -503f)), vec3<i32>(u_input.b, ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(2147483647i, 32711i, u_input.b)), 1i, -1i), 8227i & _wgslsmith_mult_i32(-6872i, firstTrailingBit(u_input.e))));
}


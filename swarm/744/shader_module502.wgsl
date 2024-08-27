struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32) -> vec3<i32> {
    var var_0 = arg_0;
    var_0 = arg_0;
    var_0 = Struct_1(_wgslsmith_add_vec2_i32(var_0.a, max(_wgslsmith_sub_vec2_i32(var_0.a, select(vec2<i32>(var_0.a.x, arg_0.a.x), vec2<i32>(-1i, var_0.a.x), arg_1)), _wgslsmith_sub_vec2_i32(~var_0.a, ~vec2<i32>(-16918i, arg_0.a.x)))), any(vec3<bool>(all(vec4<bool>(true, var_0.b, arg_1.x, true)), true, arg_0.b)), select(abs(firstTrailingBit(vec3<u32>(0u, var_0.c.x, arg_2))) & arg_0.c, firstTrailingBit(~var_0.c ^ ~var_0.c), var_0.b), var_0.d);
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1000f, var_1.d)), -1808f)) + arg_0.d);
    return -firstTrailingBit(firstTrailingBit(select(_wgslsmith_sub_vec3_i32(vec3<i32>(-36245i, -2274i, var_1.a.x), vec3<i32>(2147483647i, var_1.a.x, var_1.a.x)), select(vec3<i32>(2147483647i, arg_0.a.x, -25861i), vec3<i32>(var_1.a.x, arg_0.a.x, var_0.a.x), true), !vec3<bool>(arg_0.b, var_1.b, var_1.b))));
}

fn func_2() -> f32 {
    var var_0 = 57081u;
    var_0 = 1u & ~u_input.a;
    let var_1 = (countOneBits(func_3(Struct_1(vec2<i32>(-40640i, -42072i), false, vec3<u32>(u_input.a, u_input.a, 1u), -482f), vec2<bool>(true, true), u_input.a)) >> (vec3<u32>(52128u, ~0u, 1u) % vec3<u32>(32u))) | (~(-vec3<i32>(1i, -39344i, 15584i)) & ~firstTrailingBit(vec3<i32>(7252i, 1i, 0i)));
    var var_2 = select(select(!vec2<bool>(true, all(vec3<bool>(false, true, true))), select(vec2<bool>(all(vec3<bool>(true, true, true)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), vec2<bool>(true, true), all(vec3<bool>(true, true, true))), false != all(vec2<bool>(true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))));
    let var_3 = -_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_1.x, var_1.x, var_1.x), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)) << (select(vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, 40644u, 60291u), false) % vec4<u32>(32u)), -(vec4<i32>(-2147483647i, -37188i, var_1.x, var_1.x) >> (vec4<u32>(u_input.a, u_input.a, 5204u, 592u) % vec4<u32>(32u)))) | -_wgslsmith_mod_vec4_i32(firstTrailingBit(~vec4<i32>(var_1.x, -1i, var_1.x, -2147483647i)), -vec4<i32>(-1i, var_1.x, -35074i, var_1.x));
    return 1424f;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    let var_1 = true;
    var var_2 = ~36703u;
    return Struct_1(-_wgslsmith_add_vec2_i32(func_3(Struct_1(vec2<i32>(24145i, 1i), true, vec3<u32>(57460u, 21911u, u_input.a), var_0), !vec2<bool>(var_1, var_1), ~arg_0).zx, -vec2<i32>(1i, 1i)), true, firstLeadingBit(~vec3<u32>(~u_input.a, ~46229u, 5520u)), 965f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~34351u;
    let var_1 = vec2<bool>(true, false);
    var var_2 = ~u_input.a;
    var_2 = 78092u >> (u_input.a % 32u);
    let var_3 = func_1(reverseBits(_wgslsmith_add_u32(var_0, ~var_0)) ^ 33751u);
    var var_4 = Struct_1(var_3.a | (-var_3.a >> (vec2<u32>(22936u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_3.c.x, 10281u), var_3.c)) % vec2<u32>(32u))), false, ~var_3.c, _wgslsmith_f_op_f32(-519f - _wgslsmith_f_op_f32(select(var_3.d, _wgslsmith_f_op_f32(-1352f + var_3.d), all(vec3<bool>(true, var_3.b, false))))));
    var var_5 = Struct_1(var_3.a, false, abs(abs(vec3<u32>(var_4.c.x, ~4294967295u, u_input.a))), 821f);
    var var_6 = ~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~var_4.c.zx, vec2<u32>(~1u, var_4.c.x & var_3.c.x)), var_4.c.xx);
    let var_7 = -var_3.a.x != -29894i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-431f, var_4.d, _wgslsmith_f_op_f32(min(158f, 416f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.d, var_3.d, -1269f), vec3<f32>(var_4.d, var_3.d, 1425f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.d, 514f, var_5.d))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_5.d))), 1f), _wgslsmith_f_op_f32(f32(-1f) * -850f));
}


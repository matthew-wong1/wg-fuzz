struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<u32>) -> i32 {
    let var_0 = ~vec3<i32>(~(~(-1i << (0u % 32u))), 36024i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i & arg_0.a, -28587i), reverseBits(vec3<i32>(0i, -66332i, arg_1.a))));
    let var_1 = vec2<bool>(!(arg_2.a & all(!vec2<bool>(true, arg_2.a))), arg_2.a);
    let var_2 = ~firstTrailingBit(arg_3);
    let var_3 = arg_3;
    var var_4 = arg_2;
    return u_input.d;
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    let var_0 = ~103107u;
    let var_1 = !select(all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true))), all(vec4<bool>(true, true, true, true)), true);
    var var_2 = vec4<bool>(true, true, true, true);
    var var_3 = Struct_2(true & (-(~2147483647i) >= _wgslsmith_mult_i32(firstTrailingBit(arg_0.x), func_3(Struct_1(u_input.c, var_0, 4294967295u, 1640f), Struct_1(-2147483647i, var_0, var_0, -498f), Struct_2(var_1), vec4<u32>(53682u, var_0, 0u, 49107u)))));
    var_2 = select(!(!(!(!vec4<bool>(var_3.a, var_2.x, var_2.x, var_1)))), !vec4<bool>(all(select(vec4<bool>(var_1, true, true, true), vec4<bool>(var_1, var_3.a, var_2.x, false), true)), false | (var_0 > 4294967295u), var_3.a, true), any(vec2<bool>(false, all(vec4<bool>(false, var_2.x, false, var_2.x)))) && false);
    return u_input.d;
}

fn func_1() -> Struct_2 {
    var var_0 = select((-firstLeadingBit(vec3<i32>(u_input.c, u_input.c, u_input.b)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) & -(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, -5122i, 93120i), vec3<i32>(-32027i, u_input.a.x, 8173i)) & ~vec3<i32>(-1i, u_input.b, 22547i)), firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, 2147483647i, -2147483647i)), false);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(356f)) > _wgslsmith_div_f32(-1117f, 954f));
    let var_2 = ~1u;
    let var_3 = Struct_1(select((func_2(vec2<i32>(var_0.x, u_input.d)) << (0u % 32u)) ^ 1i, select(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.x, 0i), vec3<i32>(-1907i, -6972i, u_input.a.x)) | var_0.x, var_0.x, true), true), ~(~(~(~var_2))), abs(var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(787f, -1050f, var_1.a)) + _wgslsmith_f_op_f32(max(-833f, -1197f)))))));
    let var_4 = 31481u;
    return Struct_2(false);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = vec3<f32>(1127f, -2029f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(132f)), -1605f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1051f, _wgslsmith_f_op_f32(1743f + 910f), !arg_0.a)), _wgslsmith_f_op_f32(floor(-864f)))), true)));
    var var_2 = 0u;
    var_0 = func_1();
    var var_3 = Struct_1(-8012i, ~27237u, 40969u, 530f);
    return Struct_1(u_input.b >> (~(~5223u) % 32u), select(~(~var_3.c), var_3.b, true), _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_3.b, var_3.c), ~var_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, var_3.d, all(vec3<bool>(false, arg_0.a, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 2147483647i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a.x, -2147483647i), vec3<i32>(31563i, 30940i, u_input.a.x)), ~u_input.b), min(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, -18812i, 2147483647i), vec3<i32>(1i, 10977i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.d)), abs(vec3<i32>(u_input.a.x, u_input.c, u_input.d))), min(vec3<i32>(-23089i, u_input.d, 21691i), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 19249i, 1i), vec3<i32>(u_input.b, u_input.a.x, -2147483647i))))));
    var var_1 = func_1();
    var_1 = func_1();
    var var_2 = func_4(func_1(), abs(vec3<i32>(-1i, var_0.a, var_0.a)));
    var_1 = func_1();
    var var_3 = !select(!select(vec3<bool>(false, false, false), !vec3<bool>(var_1.a, var_1.a, var_1.a), !vec3<bool>(false, true, var_1.a)), select(!select(vec3<bool>(true, var_1.a, true), vec3<bool>(var_1.a, true, var_1.a), true), !(!vec3<bool>(var_1.a, false, false)), select(select(vec3<bool>(var_1.a, var_1.a, false), vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(true, true, var_1.a)), vec3<bool>(false, true, var_1.a), vec3<bool>(true, var_1.a, false))), var_1.a & all(select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, true))));
    var var_4 = !all(!(!(!vec4<bool>(true, true, true, var_1.a))));
    let var_5 = Struct_2(!any(!select(vec2<bool>(false, var_1.a), vec2<bool>(true, var_3.x), vec2<bool>(true, var_3.x))));
    let var_6 = _wgslsmith_mult_vec2_u32(~vec2<u32>(reverseBits(~0u), ~var_2.c), _wgslsmith_sub_vec2_u32(~firstTrailingBit(vec2<u32>(1u, var_0.c)), vec2<u32>(1u, 30945u)) ^ abs(firstLeadingBit(vec2<u32>(1u, 9980u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~49455u)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_mod_i32(1i, 2147483647i)) ^ select(-vec3<i32>(u_input.a.x, -1i, u_input.b), ~vec3<i32>(u_input.a.x, var_2.a, u_input.b), vec3<bool>(var_3.x, false, var_5.a)), vec3<i32>(func_4(Struct_2(var_1.a), ~vec3<i32>(0i, var_0.a, 0i)).a, 48679i, var_0.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_f_op_f32(ceil(var_2.d))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.d)), _wgslsmith_div_f32(-1198f, -1000f)), -367f), var_3.yz)));
}


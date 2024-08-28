struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-398f, 740f, 204f), vec3<f32>(-1000f, -298f, -861f));

var<private> global1: vec4<i32> = vec4<i32>(-1i, -4952i, 82275i, i32(-2147483648));

var<private> global2: vec4<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>) -> vec3<f32> {
    return arg_0.b;
}

fn func_2(arg_0: f32) -> vec3<f32> {
    var var_0 = all(vec3<bool>(true, any(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)), any(vec3<bool>(true, true, true))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-394f, 580f, global0.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(414f, 146f, -1000f)), true)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 575f, -1921f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, arg_0, -1000f)), _wgslsmith_div_vec3_f32(global0.b, vec3<f32>(-416f, -1111f, arg_0))), global0.a.x, ~vec2<u32>(1u, 18772u))))));
    var var_1 = 1000f;
    var var_2 = u_input.a;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, -1242f, arg_0), global0.b))))), global0.b, true)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(548f - 515f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(735f)), arg_0), -1000f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-2017f - 1000f), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(trunc(arg_0)))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global0.b)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> i32 {
    global0 = Struct_1(vec3<f32>(global0.a.x, -1504f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-372f)))), _wgslsmith_f_op_vec3_f32(global0.a * _wgslsmith_f_op_vec3_f32(func_2(arg_0.a.x))));
    global2 = firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_1.zx, arg_1.zx), -arg_1.x, 371i, 1i), vec4<i32>(-22592i, -19361i, global1.x, 47619i) << (~vec4<u32>(1u, 35947u, 16846u, 32037u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mod_i32(-31106i, 22767i), 31718i, 2147483647i, ~u_input.a) | reverseBits(~vec4<i32>(global2.x, 5524i, 2147483647i, 362i))));
    global1 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, 58898i, arg_1.x, 29505i), vec4<i32>(global1.x, u_input.a, arg_1.x, u_input.a)), ~vec4<i32>(u_input.a, 0i, global1.x, -8316i)) | ~vec4<i32>(arg_1.x, global2.x, 26341i, -32198i), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, -29347i, 31170i, -1i), ~vec4<i32>(-5704i, -2147483647i, global1.x, global1.x)), -vec4<i32>(-1i, arg_1.x, global1.x, u_input.a))) << (((vec4<u32>(_wgslsmith_add_u32(22849u, 102496u), 29975u, 1u, _wgslsmith_mult_u32(0u, 1u)) >> ((min(vec4<u32>(1u, 863u, 17694u, 0u), vec4<u32>(4294967295u, 48373u, 0u, 1262u)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 53697u, 16792u, 1u), vec4<u32>(1u, 69061u, 0u, 16391u), vec4<u32>(27900u, 36523u, 77633u, 10716u))) % vec4<u32>(32u))) & min(vec4<u32>(~0u, 42310u, 0u, 37505u), vec4<u32>(_wgslsmith_mult_u32(0u, 64135u), 1u, ~61308u, ~8398u))) % vec4<u32>(32u));
    var var_0 = any(!(!vec4<bool>(true, all(vec4<bool>(false, false, true, true)), true, any(vec2<bool>(true, true)))));
    global2 = reverseBits(vec4<i32>(reverseBits(10528i), max(~(-1i << (0u % 32u)), max(10550i | u_input.a, global2.x)), _wgslsmith_dot_vec2_i32(global2.yx, reverseBits(vec2<i32>(0i, -2147483647i) ^ global1.yz)), u_input.a));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec3<f32>(_wgslsmith_div_f32(480f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(global0.a.x - 616f))), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.b.x * global0.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.b.x + 1000f), global0.a.x, -732f))));
    global2 = vec4<i32>(_wgslsmith_dot_vec3_i32(global2.yyz, global2.yyz), firstLeadingBit(func_1(Struct_1(global0.b, vec3<f32>(global0.b.x, 147f, -396f)), global2.zwz) ^ select(_wgslsmith_sub_i32(global2.x, 1i), u_input.a ^ global1.x, true)), -19409i, -min(i32(-1i) * -global1.x, min(-global2.x, -1i)));
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -196f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * 1054f))), !any(vec2<bool>(true, false)) && true, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false)), false);
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - global0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -731f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1047f)), _wgslsmith_f_op_f32(min(global0.b.x, _wgslsmith_f_op_f32(392f + global0.a.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(747f, global0.b.x))), global0.b.x, _wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(-global0.b.x), true)))));
    var var_2 = var_1;
    global2 = ~min(select(firstLeadingBit(~vec4<i32>(u_input.a, 8921i, 942i, -2147483647i)), ~vec4<i32>(-7696i, -2147483647i, global2.x, u_input.a), any(!var_0)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, u_input.a, global1.x, -19447i), vec4<i32>(36546i, 2147483647i, u_input.a, u_input.a) & vec4<i32>(u_input.a, -18911i, global1.x, 66455i)), vec4<i32>(0i, firstLeadingBit(15580i), global2.x ^ global1.x, abs(2852i)), vec4<bool>(true, false, !var_0.x, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.a.x));
}


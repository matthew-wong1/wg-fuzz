struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(26004i, 2147483647i);

var<private> global1: array<bool, 24>;

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    global0 = _wgslsmith_mod_vec2_i32(-(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(22254i, -7344i), vec2<i32>(-2147483647i, 1i), vec2<i32>(global0.x, 40894i)), ~vec2<i32>(global0.x, -2337i)) | vec2<i32>(1i, -40551i)), vec2<i32>(1i, ~(i32(-1i) * -global0.x)));
    global2 = arg_1.c;
    var var_0 = countOneBits(vec2<u32>(arg_1.b, arg_1.b));
    global0 = -vec2<i32>(-global0.x, ~global0.x);
    var_0 = select(u_input.a.xw, u_input.a.yx, arg_0);
    return true;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: u32, arg_3: i32) -> bool {
    var var_0 = select(select(vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~arg_2, ~12059u), 24u)], true, !(arg_0 && false)), global2.xzw, true), vec3<bool>(!func_3(true, Struct_1(-238f, 15999u, vec4<bool>(false, global2.x, global2.x, global1[_wgslsmith_index_u32(4294967295u, 24u)]))), any(select(vec3<bool>(false, global2.x, arg_0), global2.xzz, select(vec3<bool>(global2.x, global1[_wgslsmith_index_u32(85341u, 24u)], false), vec3<bool>(false, arg_0, false), global2.zyw))), true), !arg_0);
    global2 = !select(vec4<bool>(true, true, false, false), select(vec4<bool>(any(global2.yxz), false, var_0.x, select(arg_0, true, arg_0)), !(!vec4<bool>(true, false, arg_0, true)), all(vec3<bool>(var_0.x, true, arg_0))), arg_0);
    global2 = select(vec4<bool>(~arg_3 == _wgslsmith_mod_i32(max(41337i, -13762i), min(11169i, 5716i)), arg_2 <= 1u, var_0.x, true), !vec4<bool>(arg_0, all(global2.xw) & all(vec4<bool>(global1[_wgslsmith_index_u32(arg_2, 24u)], true, global2.x, var_0.x)), all(select(vec4<bool>(false, var_0.x, global1[_wgslsmith_index_u32(43954u, 24u)], false), vec4<bool>(global1[_wgslsmith_index_u32(62732u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)], var_0.x, true), vec4<bool>(var_0.x, global2.x, false, arg_0))), true), vec4<bool>(!arg_0, true, true & all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 24u)], arg_0, var_0.x)), !arg_0));
    global0 = abs(arg_1.xw);
    var var_1 = arg_0 || true;
    return false;
}

fn func_1() -> Struct_2 {
    global1 = array<bool, 24>();
    global1 = array<bool, 24>();
    let var_0 = select(global2.xzw, global2.xzy, select(vec3<bool>(global2.x, true, !func_2(global1[_wgslsmith_index_u32(0u, 24u)], vec4<i32>(18344i, global0.x, -2147483647i, 0i), 57670u, -2147483647i)), select(global2.yxw, vec3<bool>(true, all(global2.zxw), any(vec3<bool>(false, global2.x, global1[_wgslsmith_index_u32(u_input.a.x, 24u)]))), global2.xwz), select(select(vec3<bool>(global2.x, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 24u)]), global2.zzy, global2.xyw), !(!vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 24u)])), vec3<bool>(true, global2.x & global2.x, true || global2.x))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(2282f)), _wgslsmith_f_op_f32(-1538f + 1245f))))), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, u_input.a.x), u_input.a.x), u_input.a.x), !(!(!vec4<bool>(true, global2.x, true, true)))), !(!vec4<bool>(var_0.x, all(vec4<bool>(var_0.x, var_0.x, true, false)), var_0.x, true)), Struct_1(_wgslsmith_f_op_f32(trunc(-1000f)), 8833u, vec4<bool>(true, _wgslsmith_f_op_f32(ceil(-157f)) >= _wgslsmith_f_op_f32(306f * -1000f), all(var_0), any(vec2<bool>(true, var_0.x)))));
    var var_2 = var_1;
    return Struct_2(Struct_1(-856f, min(0u, ~(~1u)), var_2.c.c), select(vec4<bool>(true, global1[_wgslsmith_index_u32(var_2.a.b, 24u)], true, true), !select(vec4<bool>(var_2.a.c.x, var_1.b.x, true, var_2.a.c.x), vec4<bool>(global2.x, false, true, var_1.c.c.x), false), !select(select(var_1.b, var_1.a.c, true), select(var_2.a.c, vec4<bool>(global2.x, global2.x, false, false), false), false)), Struct_1(506f, var_2.c.b, !select(var_2.c.c, select(var_2.c.c, var_1.c.c, var_2.b), true)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = arg_0.a.c.x;
    var var_1 = arg_0.a;
    global0 = -vec2<i32>(_wgslsmith_div_i32(global0.x, -global0.x), ~_wgslsmith_add_i32(abs(27670i), ~0i));
    global0 = vec2<i32>(global0.x, global0.x);
    let var_2 = Struct_2(func_1().a, var_1.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1071f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -586f) * _wgslsmith_f_op_f32(var_1.a * -1000f))), 0u, select(var_1.c, vec4<bool>(var_1.c.x && var_1.c.x, u_input.a.x < 0u, true, any(vec4<bool>(global2.x, false, global2.x, true))), select(!arg_0.c.c, arg_0.c.c, select(vec4<bool>(false, arg_0.b.x, true, var_1.c.x), vec4<bool>(arg_0.b.x, false, arg_0.c.c.x, var_1.c.x), arg_0.c.c.x)))));
    return Struct_2(arg_0.a, select(select(vec4<bool>(select(global1[_wgslsmith_index_u32(4294967295u, 24u)], global2.x, global1[_wgslsmith_index_u32(arg_0.a.b, 24u)]), true, global1[_wgslsmith_index_u32(~var_2.a.b, 24u)], true), !vec4<bool>(var_2.a.c.x, true, false, arg_0.c.c.x), all(vec3<bool>(global1[_wgslsmith_index_u32(var_1.b, 24u)], global1[_wgslsmith_index_u32(var_2.c.b, 24u)], false))), select(arg_0.b, vec4<bool>(func_2(global2.x, vec4<i32>(global0.x, 40912i, -2147483647i, global0.x), 16993u, 28661i), all(vec4<bool>(true, global2.x, false, var_2.a.c.x)), false, true), !var_2.a.c), false), arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2068f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -145f)))));
    global2 = !vec4<bool>(var_0.a.b >= max(_wgslsmith_sub_u32(0u, u_input.a.x), firstTrailingBit(var_0.c.b)), func_3(!(!var_0.c.c.x), func_1().c), true, !(38851u > u_input.a.x));
    var var_1 = func_1().a;
    var var_2 = countOneBits(u_input.a);
    let var_3 = -1438f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(i32(-1i) * -1i, 1i, -18717i) & vec3<i32>(global0.x | countOneBits(global0.x), _wgslsmith_clamp_i32(-global0.x, -global0.x, -global0.x), reverseBits(_wgslsmith_add_i32(-10522i, global0.x))), min(-vec2<i32>(global0.x, global0.x), -vec2<i32>(global0.x, 21900i ^ global0.x)), vec3<u32>(_wgslsmith_div_u32(~_wgslsmith_add_u32(var_0.c.b, 11427u), var_0.c.b), u_input.a.x, countOneBits(23558u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -250f))) * _wgslsmith_f_op_f32(-var_3)), u_input.a);
}


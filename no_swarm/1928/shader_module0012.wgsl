struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: vec3<i32> = vec3<i32>(6283i, i32(-2147483648), -21780i);

var<private> global2: i32;

var<private> global3: Struct_1 = Struct_1(vec2<i32>(-22057i, 41976i), vec3<u32>(20275u, 0u, 78569u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec4<bool> {
    global1 = select(select(vec3<i32>(1i, u_input.a.x, ~global3.a.x), vec3<i32>(global1.x, global3.a.x, ~global1.x), any(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], global0[_wgslsmith_index_u32(u_input.b.x, 11u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(45892u, 11u)], global0[_wgslsmith_index_u32(15330u, 11u)], true, false), global0[_wgslsmith_index_u32(u_input.b.x, 11u)]))), abs(vec3<i32>(abs(global3.a.x), ~(-1i), abs(u_input.e))), select(!global0[_wgslsmith_index_u32(1u >> (u_input.b.x % 32u), 11u)], !global0[_wgslsmith_index_u32(global3.b.x, 11u)] & true, global0[_wgslsmith_index_u32(abs(countOneBits(1u)), 11u)])) ^ (_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, i32(-1i) * -2374i, -global3.a.x), u_input.a.wzw >> (firstLeadingBit(global3.b) % vec3<u32>(32u))) & ~(-(~u_input.a.xzx)));
    let var_0 = Struct_1(global1.zx, _wgslsmith_clamp_vec3_u32(max(_wgslsmith_div_vec3_u32(vec3<u32>(63482u, 15178u, 0u) | vec3<u32>(global3.b.x, global3.b.x, u_input.b.x), global3.b), global3.b), global3.b, ~abs(vec3<u32>(0u, 0u, u_input.d)) << (vec3<u32>(firstLeadingBit(u_input.b.x), _wgslsmith_mod_u32(4294967295u, global3.b.x), 0u) % vec3<u32>(32u))));
    global2 = global1.x;
    var var_1 = reverseBits(u_input.a.x << (global3.b.x % 32u));
    global3 = var_0;
    return vec4<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-189f))) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-670f)), 1187f))), all(vec2<bool>(true, true)), all(!select(select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(101016u, 11u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(5792u, 11u)]), true), select(vec3<bool>(global0[_wgslsmith_index_u32(39705u, 11u)], global0[_wgslsmith_index_u32(56816u, 11u)], false), vec3<bool>(false, false, false), vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.b.x, 11u)], global0[_wgslsmith_index_u32(31528u, 11u)])), all(vec3<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 11u)], global0[_wgslsmith_index_u32(var_0.b.x, 11u)], true)))), global0[_wgslsmith_index_u32(~(~(~15618u)), 11u)] || all(vec2<bool>(!global0[_wgslsmith_index_u32(var_0.b.x, 11u)], global0[_wgslsmith_index_u32(var_0.b.x, 11u)])));
}

fn func_2(arg_0: f32) -> vec2<bool> {
    var var_0 = !(!func_3());
    let var_1 = ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b.x, 0u >> (u_input.b.x % 32u), 4294967295u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(34760u, 51976u, global3.b.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 1u, global3.b.x), vec3<u32>(u_input.d, 4294967295u, 0u)), global3.b), ~(global3.b ^ global3.b) & _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, global3.b.x), ~global3.b));
    var var_2 = min(u_input.b.x, 77278u) & _wgslsmith_mod_u32(abs(_wgslsmith_dot_vec3_u32(global3.b, global3.b) >> (~global3.b.x % 32u)), global3.b.x);
    var var_3 = Struct_1(_wgslsmith_add_vec2_i32(~((global3.a << (vec2<u32>(18467u, 13784u) % vec2<u32>(32u))) | _wgslsmith_mod_vec2_i32(u_input.a.wx, global1.yy)), global1.yz), firstLeadingBit(global3.b));
    let var_4 = -(_wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -19091i, 0i, ~24154i), vec3<i32>(-global3.a.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), global1.x)) << (_wgslsmith_sub_vec3_u32(countOneBits(~var_3.b), global3.b) % vec3<u32>(32u)));
    return !(!vec2<bool>((2147483647i >= global3.a.x) & (var_0.x && false), true));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = !select(select(func_2(-562f), func_3().yw, func_2(-573f)), !func_3().yy, true);
    var var_1 = _wgslsmith_mod_u32(~(27176u & reverseBits(global3.b.x)) << (1u % 32u), 32090u);
    global1 = vec3<i32>(u_input.c, i32(-1i) * -9921i, ~(-2982i));
    let var_2 = arg_1;
    let var_3 = vec2<bool>(false, any(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(global3.b.x, 11u)], global0[_wgslsmith_index_u32(73184u, 11u)], false, global0[_wgslsmith_index_u32(36225u, 11u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(u_input.d, 11u)], false, global0[_wgslsmith_index_u32(0u, 11u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_1.b.x, 11u)], global0[_wgslsmith_index_u32(1u, 11u)])), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(72187u, 11u)], true), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.b.x, 11u)], true, var_0.x, true)), true)));
    return Struct_1(abs(~global1.yz << ((vec2<u32>(arg_1.b.x, arg_1.b.x) | arg_1.b.yy) % vec2<u32>(32u))), _wgslsmith_sub_vec3_u32(global3.b, ~_wgslsmith_mod_vec3_u32(~global3.b, ~var_2.b)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> i32 {
    global1 = select(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, arg_0.a.x), arg_1.a), abs(global3.a.x), -12033i)), ~u_input.a.zyx), abs(select((u_input.a.xyy >> (vec3<u32>(global3.b.x, 10137u, 0u) % vec3<u32>(32u))) >> (firstLeadingBit(global3.b) % vec3<u32>(32u)), vec3<i32>(-1i) * -u_input.a.yyx, !global0[_wgslsmith_index_u32(0u, 11u)] | global0[_wgslsmith_index_u32(~u_input.b.x, 11u)])), !(!any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 11u)], true))));
    global1 = select(firstTrailingBit(select(vec3<i32>(arg_0.a.x ^ global3.a.x, global3.a.x & u_input.c, u_input.a.x), ~u_input.a.zyx, true)), u_input.a.xww, global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(1u, firstTrailingBit(27096u))), 11u)]);
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.b, global3.b), 11u)];
    var var_1 = arg_1.b.x;
    let var_2 = arg_0;
    return ~(-(i32(-1i) * -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(244f + -2107f)))) - _wgslsmith_f_op_f32(f32(-1f) * -346f));
    let var_1 = vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
    global0 = array<bool, 11>();
    global3 = Struct_1(global3.a, vec3<u32>(4294967295u, u_input.d, 8071u));
    var var_2 = u_input.b.x;
    global0 = array<bool, 11>();
    global2 = _wgslsmith_mult_i32(countOneBits(firstTrailingBit(func_4(Struct_1(u_input.a.ww, global3.b), func_1(u_input.a, Struct_1(vec2<i32>(31346i, -2147483647i), vec3<u32>(u_input.b.x, u_input.b.x, u_input.d)), var_1), _wgslsmith_f_op_vec3_f32(-var_1)))), global1.x);
    var var_3 = func_1(min(max(-vec4<i32>(global3.a.x, global3.a.x, u_input.e, -1i), _wgslsmith_sub_vec4_i32(u_input.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 1i, global1.x, u_input.a.x), u_input.a, u_input.a))), reverseBits(~u_input.a >> (select(vec4<u32>(30528u, 0u, 45167u, 0u), vec4<u32>(u_input.d, 4294967295u, u_input.b.x, u_input.b.x), true) % vec4<u32>(32u)))), func_1(vec4<i32>(global1.x >> (u_input.b.x % 32u), _wgslsmith_mod_i32(countOneBits(-55850i), global3.a.x), -global1.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(-22187i, u_input.c), func_1(vec4<i32>(2147483647i, global1.x, -2147483647i, u_input.c), Struct_1(global1.xz, global3.b), var_1).a.x)), Struct_1(min(min(vec2<i32>(u_input.e, global1.x), global1.zx), -u_input.a.zx), ~vec3<u32>(77882u, 43265u, 0u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_1 + var_1), vec3<f32>(var_1.x, 1845f, -1000f)))))), _wgslsmith_f_op_vec3_f32(ceil(var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) + 1000f)), _wgslsmith_f_op_vec3_f32(-var_1), ~global3.b.x | ~_wgslsmith_clamp_u32(global3.b.x | 4294967295u, 4294967295u, 1u), -countOneBits(1i));
}


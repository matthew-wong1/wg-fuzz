struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: u32;

var<private> global2: array<i32, 11>;

var<private> global3: vec3<bool> = vec3<bool>(true, true, true);

var<private> global4: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> u32 {
    global3 = select(vec3<bool>(any(select(select(vec3<bool>(global4.a, true, true), vec3<bool>(global3.x, global0[_wgslsmith_index_u32(7177u, 5u)], false), vec3<bool>(global0[_wgslsmith_index_u32(16921u, 5u)], global3.x, true)), !vec3<bool>(true, false, global0[_wgslsmith_index_u32(14911u, 5u)]), !vec3<bool>(global0[_wgslsmith_index_u32(2570u, 5u)], false, false))), true, !global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 47735u, 1u, 40941u), vec4<u32>(53788u, 5507u, 51270u, 1u)), 5u)]), select(select(vec3<bool>(!global0[_wgslsmith_index_u32(1u, 5u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(28247u, 27660u), 5u)], !global0[_wgslsmith_index_u32(33019u, 5u)], global4.a & global0[_wgslsmith_index_u32(36499u, 5u)]), true), vec3<bool>(any(global3.yy), !any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 5u)], false, true, false)), any(vec3<bool>(true, global4.a, global3.x))), !(!(!vec3<bool>(true, global4.a, global4.a)))), !select(!select(vec3<bool>(true, global4.a, false), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 5u)], global3.x), true), select(vec3<bool>(true, true, true), vec3<bool>(true, global4.a, true), global3.x), select(true, !global3.x, true)));
    global3 = select(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 77888u), vec2<u32>(18866u, 34814u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(16603u, 26244u, 57479u), vec3<u32>(1u, 4294967295u, 12533u)) % 32u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(28901u, 13222u, 0u)), firstLeadingBit(vec3<u32>(9520u, 5222u, 1u)))), 5u)], global3.x == any(!vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], true)), 1u > _wgslsmith_add_u32(15452u, select(1u, 1u, global0[_wgslsmith_index_u32(0u, 5u)]))), select(vec3<bool>(true, true, all(select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(false, false, global3.x), vec3<bool>(false, global0[_wgslsmith_index_u32(29535u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)])))), !select(select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(false, false, global3.x), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(35904u, 5u)], global3.x)), select(vec3<bool>(global3.x, false, true), vec3<bool>(true, false, true), vec3<bool>(global4.a, false, global3.x)), !vec3<bool>(false, global4.a, false)), vec3<bool>(global3.x, select(select(global4.a, global3.x, false), true, true), global4.a)), !select(select(!vec3<bool>(true, global4.a, global3.x), select(vec3<bool>(global4.a, global4.a, global0[_wgslsmith_index_u32(1u, 5u)]), vec3<bool>(global4.a, global3.x, global0[_wgslsmith_index_u32(55657u, 5u)]), true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 5u)], false, false)), !(!vec3<bool>(global4.a, false, global4.a)), vec3<bool>(u_input.a > -48631i, true, true)));
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(~select(1u, ~1u, global3.x), 5u)], _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global4.b.x * -583f), global4.b.x, _wgslsmith_div_f32(214f, -1282f), _wgslsmith_f_op_f32(max(-177f, 501f)))))));
    global4 = Struct_1(_wgslsmith_f_op_f32(-var_0.b.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(var_0.b.x, var_0.b.x), _wgslsmith_f_op_f32(ceil(1974f)), _wgslsmith_f_op_f32(max(arg_0, var_0.b.x)), -589f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(280f, 165f, 357f, -750f)))), false))));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, 56075u), vec3<u32>(~0u, firstTrailingBit(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(19498u, 0u, 4294967295u, 28639u), vec4<u32>(0u, 1u, 45261u, 5496u)))) < countOneBits(firstTrailingBit(countOneBits(31377u))), global4.b);
    return 10105u;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> bool {
    global1 = ~_wgslsmith_div_u32(arg_1, arg_1);
    let var_0 = global4.a;
    global1 = _wgslsmith_sub_u32(abs(arg_1), 48973u);
    var var_1 = firstLeadingBit(max(vec2<u32>(40658u, arg_1), ~vec2<u32>(38164u, arg_1) ^ countOneBits(~vec2<u32>(arg_1, 14096u))));
    let var_2 = Struct_1(countOneBits(arg_1 ^ ~82701u) > reverseBits(~(~var_1.x)), vec4<f32>(-840f, global4.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(sign(global4.b.x)))) * _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(abs(arg_0.b.x)))), 727f));
    return select(!(!all(vec4<bool>(global3.x, arg_0.a, arg_0.a, false))), !any(select(vec3<bool>(var_2.a, true, global4.a), !vec3<bool>(false, global3.x, global0[_wgslsmith_index_u32(66030u, 5u)]), select(vec3<bool>(global3.x, true, true), vec3<bool>(var_2.a, false, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], arg_0.a, global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.b.x, var_2.b.x)))) <= 708f);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(select(-1554f, _wgslsmith_div_f32(arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.b.x, _wgslsmith_f_op_f32(-global4.b.x), arg_1.a)))), arg_0));
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_1.b.ywz))))));
    var var_3 = true;
    var var_4 = true;
    return _wgslsmith_f_op_vec4_f32(select(arg_2.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, arg_2.b.x, -743f, -331f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-258f, -2298f, var_2.x, arg_2.b.x), arg_1.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-588f, 687f, global4.b.x, var_0) - vec4<f32>(-396f, -1680f, var_2.x, -1553f))))), !(!select(!vec4<bool>(arg_2.a, global4.a, true, true), !vec4<bool>(global3.x, false, false, global3.x), !vec4<bool>(true, arg_1.a, global0[_wgslsmith_index_u32(4294967295u, 5u)], false)))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(func_5(func_4(Struct_1(all(vec2<bool>(true, true)), vec4<f32>(global4.b.x, -508f, -712f, global4.b.x)), (0u << (0u % 32u)) << (func_3(-1744f) % 32u)), Struct_1(global4.a, vec4<f32>(global4.b.x, _wgslsmith_f_op_f32(step(-825f, 293f)), _wgslsmith_f_op_f32(global4.b.x + global4.b.x), _wgslsmith_f_op_f32(global4.b.x - 292f))), Struct_1(all(global3.zy), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(global4.b))))))));
    var var_1 = !func_4(Struct_1(false, vec4<f32>(1f, global4.b.x, _wgslsmith_f_op_f32(364f + global4.b.x), -496f)), 1u);
    var var_2 = max(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~31388u, ~4294967295u), 11u)], -2147483647i);
    let var_3 = vec4<i32>(-40547i, global2[_wgslsmith_index_u32(abs(firstLeadingBit(~14790u)), 11u)] << (24012u % 32u), u_input.b, global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(~select(4294967295u, 0u, global4.a), _wgslsmith_dot_vec3_u32(vec3<u32>(13437u, 80099u, 4294967295u), vec3<u32>(63882u, 41950u, 0u)) << (~77534u % 32u))), 11u)]);
    var var_4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-663f, var_0.b.x) * global4.b.x), _wgslsmith_f_op_f32(359f - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.x + global4.b.x) - _wgslsmith_f_op_vec4_f32(func_5(true, Struct_1(global0[_wgslsmith_index_u32(1u, 5u)], vec4<f32>(-1000f, -275f, -1000f, global4.b.x)), Struct_1(false, global4.b))).x)), _wgslsmith_f_op_vec3_f32(-var_0.b.wxw))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(697f, global4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.x)))), vec3<f32>(_wgslsmith_f_op_vec4_f32(func_5(false, Struct_1(global4.a, global4.b), Struct_1(true, global4.b))).x, -430f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-922f, var_0.b.x, global0[_wgslsmith_index_u32(0u, 5u)])), var_0.b.x)), !select(var_3.x >= 26167i, true, false)))));
    return Struct_1(var_0.a & true, _wgslsmith_f_op_vec4_f32(global4.b * vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) + var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)), _wgslsmith_f_op_f32(-var_4.x))));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_2();
    let var_1 = _wgslsmith_mult_i32(select(global2[_wgslsmith_index_u32(~0u, 11u)], global2[_wgslsmith_index_u32(abs(~1u), 11u)], all(!(!vec4<bool>(global4.a, global3.x, var_0.a, false)))), u_input.b);
    let var_2 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global4.b, vec4<f32>(_wgslsmith_f_op_f32(abs(global4.b.x)), _wgslsmith_f_op_f32(ceil(1372f)), var_0.b.x, _wgslsmith_f_op_f32(global4.b.x - global4.b.x))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(f32(-1f) * -769f), global4.b.x)))));
    let var_3 = func_2();
    global3 = !vec3<bool>(!all(select(vec4<bool>(global0[_wgslsmith_index_u32(110910u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], true, var_3.a), vec4<bool>(global3.x, global4.a, var_2.a, true), vec4<bool>(false, global4.a, global4.a, false))), var_2.a, false);
    return StorageBuffer(-_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(abs(vec4<i32>(u_input.b, 2147483647i, global2[_wgslsmith_index_u32(4626u, 11u)], var_1)), select(vec4<i32>(var_1, 13328i, global2[_wgslsmith_index_u32(31199u, 11u)], 6765i), vec4<i32>(u_input.a, 1i, 12185i, var_1), vec4<bool>(global4.a, var_0.a, global0[_wgslsmith_index_u32(56415u, 5u)], true))), abs(-vec4<i32>(-2147483647i, u_input.b, var_1, var_1))), -35593i, 23990u, _wgslsmith_dot_vec3_u32(~(~reverseBits(vec3<u32>(20815u, 5105u, 48852u))), firstTrailingBit(vec3<u32>(43660u, 0u, ~44538u))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 11>();
    global2 = array<i32, 11>();
    global2 = array<i32, 11>();
    var var_0 = -reverseBits(abs(_wgslsmith_mod_i32(~(-2147483647i), u_input.a)));
    global1 = 4294967295u;
    let x = u_input.a;
    s_output = func_1();
}


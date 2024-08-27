struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(731u, 4294967295u), vec2<u32>(68479u, 33336u), vec2<u32>(4294967295u, 9765u), vec2<u32>(23780u, 13496u), vec2<u32>(1u, 36460u), vec2<u32>(15743u, 1u), vec2<u32>(4294967295u, 9044u), vec2<u32>(1u, 26136u), vec2<u32>(691u, 23938u), vec2<u32>(61351u, 1u));

var<private> global2: array<u32, 27>;

var<private> global3: vec3<i32> = vec3<i32>(1i, 4959i, 32411i);

var<private> global4: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<bool> {
    global3 = countOneBits(firstLeadingBit(-vec3<i32>(global3.x, 23665i, global3.x) & ~u_input.e.zxw));
    let var_0 = i32(-1i) * 0i;
    var var_1 = arg_1;
    let var_2 = Struct_1(false, _wgslsmith_f_op_f32(max(-944f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 172f)) - 607f)))));
    let var_3 = var_2;
    return vec3<bool>(!(true && all(select(vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, false), var_3.a))), reverseBits(2147483647i) < var_0, false);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<u32>) -> vec2<u32> {
    var var_0 = Struct_1(select(false, false, all(func_3(global0[_wgslsmith_index_u32(~arg_2.x, 19u)], 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(373f, _wgslsmith_f_op_f32(round(-1027f)))))));
    var var_1 = global0[_wgslsmith_index_u32(arg_2.x, 19u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1968f, -342f, var_1.b) - vec3<f32>(var_0.b, var_1.b, var_1.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, var_1.b, -992f))))) - vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), -1562f, -1000f)));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.x, _wgslsmith_div_u32(0u, 5874u)), 19u)];
    var_1 = Struct_1(true, var_3.b);
    return ~vec2<u32>(~reverseBits(abs(1u)), arg_1);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = !(!(!(!select(arg_0.zxy, vec3<bool>(arg_1.a, false, arg_1.a), arg_0.ywx))));
    var var_1 = func_2(-(~_wgslsmith_clamp_i32(-1i, 6480i, u_input.c) ^ ~_wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, global3.x), vec2<i32>(u_input.d, u_input.e.x))), 28951u, ~vec4<u32>(reverseBits(u_input.b.x ^ global2[_wgslsmith_index_u32(0u, 27u)]), countOneBits(global2[_wgslsmith_index_u32(~1u, 27u)]), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(1u, 13u)], firstLeadingBit(global1[_wgslsmith_index_u32(10366u, 13u)])), ~(u_input.b.x >> (u_input.b.x % 32u))));
    var var_2 = arg_1;
    var_2 = Struct_1(var_2.a, 1208f);
    var var_3 = _wgslsmith_mult_i32(-1i, global3.x & (_wgslsmith_dot_vec4_i32(vec4<i32>(-37985i, 2147483647i, -9257i, 26705i), u_input.e) << (2057u % 32u))) ^ -countOneBits(_wgslsmith_mult_i32(u_input.c, -24362i) | reverseBits(global3.x));
    return vec2<bool>(!any(!arg_0.ywz), arg_0.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec2_u32(~global1[_wgslsmith_index_u32(abs(~u_input.b.x), 13u)] >> (vec2<u32>(40223u, ~u_input.b.x | u_input.b.x) % vec2<u32>(32u)), u_input.b.xy);
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    return global0[_wgslsmith_index_u32(func_2(u_input.c, 4294967295u, countOneBits(vec4<u32>(6071u, ~(~0u), ~0u, _wgslsmith_div_u32(~10950u, u_input.b.x)))).x, 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-709f, 989f);
    let var_1 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -1652f)));
    var var_2 = _wgslsmith_f_op_f32(-587f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b), var_0.x)))));
    var var_3 = func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b, -701f, !var_1.a)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x - -1478f), _wgslsmith_f_op_f32(var_0.x + var_1.b), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b - _wgslsmith_div_f32(var_0.x, 851f)), _wgslsmith_f_op_f32(-var_1.b))), func_4(select(select(!global4[_wgslsmith_index_u32(u_input.b.x, 17u)], !global4[_wgslsmith_index_u32(u_input.b.x, 17u)], vec2<bool>(true, true)), func_1(!vec4<bool>(false, var_1.a, false, true), var_1), !(!var_1.a)), global0[_wgslsmith_index_u32(~(~1u), 19u)]), vec2<bool>(var_1.a, var_1.a), Struct_1(false, _wgslsmith_f_op_f32(step(-527f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))))));
    var var_4 = vec3<bool>(false, (min(-4173i, global3.x) != -firstTrailingBit(2147483647i)) || func_4(global4[_wgslsmith_index_u32(19719u, 17u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.xwx, u_input.b.zzz), 19u)]).a, (global3.x == _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.c, u_input.e.x), ~2147483647i)) | var_3.a);
    var var_5 = func_4(var_4.xy, Struct_1(all(!(!vec3<bool>(var_4.x, true, var_4.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(474f, _wgslsmith_f_op_f32(max(1678f, var_0.x))) * _wgslsmith_f_op_f32(var_3.b * 1560f))));
    var var_6 = _wgslsmith_dot_vec4_i32(-abs(-u_input.e), u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1038f, var_5.b) * vec3<f32>(465f, var_0.x, 393f))))), select(vec4<u32>(~(~u_input.b.x), reverseBits(~1u), _wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), _wgslsmith_add_u32(u_input.b.x, firstLeadingBit(3100u))), min(~vec4<u32>(u_input.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 27u)], 49985u, global2[_wgslsmith_index_u32(0u, 27u)]) ^ abs(u_input.b), vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], 1u, 1u, 0u << (global2[_wgslsmith_index_u32(u_input.b.x, 27u)] % 32u))), func_3(Struct_1(var_3.a, 227f), u_input.b.x).x && !var_5.a), _wgslsmith_div_vec2_f32(var_0, vec2<f32>(1779f, var_3.b)));
}


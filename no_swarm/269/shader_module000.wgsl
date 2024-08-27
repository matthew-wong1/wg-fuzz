struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30>;

var<private> global1: array<bool, 21> = array<bool, 21>(false, true, false, true, false, true, true, false, true, true, true, true, true, true, false, false, false, true, true, false, true);

var<private> global2: array<u32, 24> = array<u32, 24>(72972u, 4294967295u, 13867u, 4294967295u, 0u, 3878u, 0u, 1u, 18379u, 1u, 686u, 34007u, 0u, 0u, 0u, 0u, 2285u, 8666u, 1u, 0u, 78724u, 4294967295u, 4294967295u, 6882u);

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: f32) -> Struct_3 {
    var var_0 = _wgslsmith_add_u32(reverseBits(45721u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)]), _wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3155u, 24u)], 24u)], 24u)], 4294967295u)), 24u)], 24u)], 24u)], 24u)]);
    let var_1 = ~u_input.a;
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(28947u, ~global2[_wgslsmith_index_u32(22979u, 24u)])), 21u)]);
    return Struct_3(true);
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(-1i >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15502u, 24u)], 24u)] % 32u), true, select(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8497u, 24u)], 24u)], 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], global2[_wgslsmith_index_u32(1u, 24u)]), vec3<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 22596u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(40712u, 64399u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)]), vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(3096u, 24u)], 4294967295u)), max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(73030u, 24u)], 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]) > ~0u)));
    let var_1 = all(global3.zy);
    global2 = array<u32, 24>();
    var var_2 = countOneBits(~vec2<u32>(~global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(83526u, 24u)], 24u)], 25890u), 24u)], firstTrailingBit(abs(40510u))));
    var_2 = ~select(vec2<u32>(select(0u, ~var_0.a.c, u_input.a >= 15742i), 3504u), vec2<u32>(global2[_wgslsmith_index_u32(~1u, 24u)], var_0.a.c), any(vec3<bool>(var_1, global3.x, all(vec4<bool>(global3.x, false, true, false)))));
    return 0u;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<bool>) -> f32 {
    var var_0 = func_2(vec2<i32>(93758i, _wgslsmith_mult_i32(firstLeadingBit(-u_input.a), -2147483647i)), select(vec2<bool>(global1[_wgslsmith_index_u32(~(~1u), 21u)], false), select(!arg_2.yz, !(!vec2<bool>(global3.x, arg_0)), !select(vec2<bool>(global1[_wgslsmith_index_u32(27269u, 21u)], false), global3.zy, false)), !select(arg_2.ww, arg_2.zz, vec2<bool>(true, global3.x))), _wgslsmith_f_op_f32(-1200f - 563f));
    let var_1 = func_2(_wgslsmith_sub_vec2_i32(global0[_wgslsmith_index_u32(6116u, 30u)], global0[_wgslsmith_index_u32(func_3(), 30u)]), select(!arg_2.yx, select(arg_2.yw, arg_2.wz, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)] << (4294967295u % 32u), 21u)]), select(!(!arg_2.wz), arg_2.xz, global3.zx)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-453f, -2050f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x))))));
    var_0 = var_1;
    var var_2 = -(~vec3<i32>(_wgslsmith_div_i32(1i, _wgslsmith_div_i32(u_input.a, -11814i)), _wgslsmith_mod_i32(u_input.a, firstLeadingBit(0i)), _wgslsmith_dot_vec2_i32(max(global0[_wgslsmith_index_u32(0u, 30u)], vec2<i32>(29937i, 0i)), -vec2<i32>(30065i, 17717i))));
    global3 = arg_2.zxy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(104f + _wgslsmith_f_op_f32(floor(arg_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 30>();
    global2 = array<u32, 24>();
    global0 = array<vec2<i32>, 30>();
    global3 = !(!(!vec3<bool>(any(vec3<bool>(false, global3.x, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47532u, 24u)], 24u)], 21u)])), true, all(global3.zz))));
    var var_0 = vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(391f, _wgslsmith_f_op_f32(-577f * -1125f), !global3.x)) * _wgslsmith_f_op_f32(func_1(false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1574f, -402f)), !vec4<bool>(false, global3.x, global3.x, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 21u)])))), 697f));
    global3 = !vec3<bool>(false, all(global3.zy), false);
    let var_1 = Struct_2(Struct_1(abs(-1i ^ ~u_input.a), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(firstTrailingBit(0u), 24u)], 24860u), 21u)], ~min(34743u, func_3())));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -803f))))), var_0.x);
    var var_2 = select(select(global3.yz, global3.xz, var_1.a.b), select(!vec2<bool>(!var_1.a.b, true), vec2<bool>(false, !var_1.a.b), global3.xy), !global3.xx);
    let x = u_input.a;
    s_output = StorageBuffer(~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19293u, 24u)], 24u)] ^ min(2673u, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, var_1.a.c), 24u)])), vec3<u32>(630u, 0u, var_1.a.c));
}


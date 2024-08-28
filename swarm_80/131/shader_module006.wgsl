struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> vec4<bool> {
    var var_0 = arg_3;
    var var_1 = select(arg_2.a, arg_2.a, true);
    var_1 = !select(select(select(select(vec4<bool>(var_1.x, var_1.x, arg_0, arg_2.a.x), arg_2.a, arg_2.a), select(arg_2.a, arg_2.a, vec4<bool>(true, true, var_1.x, true)), var_1.x), arg_2.a, !var_1.x), vec4<bool>(arg_2.a.x, any(select(vec2<bool>(false, false), arg_2.a.zw, arg_2.a.xz)), true, var_1.x), vec4<bool>(any(arg_2.a), false & any(vec2<bool>(false, arg_0)), any(vec2<bool>(true, true)), arg_1.a));
    let var_2 = vec3<i32>(-1i, ~(~_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(1i, -8481i)), -vec2<i32>(-18986i, -17706i))), countOneBits(_wgslsmith_mult_i32(_wgslsmith_sub_i32(4769i >> (0u % 32u), -4618i), ~_wgslsmith_clamp_i32(47730i, -8606i, 1i))));
    let var_3 = firstTrailingBit(_wgslsmith_mult_u32(u_input.a.x, 54203u));
    return !(!(!select(vec4<bool>(arg_2.a.x, false, false, true), vec4<bool>(var_1.x, false, arg_2.a.x, true), arg_2.a)));
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_1(vec4<bool>(all(!func_3(false, Struct_2(true), Struct_1(vec4<bool>(false, true, false, false), u_input.a.x), 681f)), true, true, true), firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), u_input.a.x), 0u)));
    let var_1 = Struct_1(var_0.a, ~(var_0.b & _wgslsmith_mod_u32(reverseBits(var_0.b), _wgslsmith_div_u32(u_input.a.x, u_input.a.x))));
    let var_2 = Struct_4(!(!var_0.a.xx));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1076f, -207f, 2112f, 2057f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(351f, 1094f, -1718f, 1501f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1044f), _wgslsmith_f_op_f32(f32(-1f) * -1874f), -1580f, _wgslsmith_f_op_f32(1000f * -386f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1013f, _wgslsmith_div_f32(701f, -738f), 663f, _wgslsmith_f_op_f32(round(-102f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(871f, -408f, 1428f, -554f) + vec4<f32>(684f, -122f, 2716f, 771f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(777f, 662f, -1560f, 949f)))));
    var_0 = Struct_1(vec4<bool>(var_2.a.x, true, all(var_0.a), false), _wgslsmith_div_u32(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.b, var_0.b), vec2<u32>(var_0.b, var_1.b)), min(vec2<u32>(var_0.b, var_1.b), vec2<u32>(1u, 1u)))), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a.x, 0u, var_1.b), ~u_input.a, false), max(~u_input.a, ~u_input.a))));
    return vec2<i32>(2074i & _wgslsmith_sub_i32(24866i << (~var_1.b % 32u), 0i), -1i);
}

fn func_1() -> Struct_2 {
    var var_0 = -min(func_2(), -vec2<i32>(1i, -17448i) >> ((u_input.a.xx << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (~select(vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), abs(4294967295u)), ~vec2<u32>(u_input.a.x, 1u), true) % vec2<u32>(32u));
    let var_1 = Struct_2(false);
    return var_1;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_clamp_vec2_u32(firstLeadingBit(u_input.a.zy), _wgslsmith_add_vec2_u32(vec2<u32>(min(min(u_input.a.x, 55028u), ~60155u), arg_0), reverseBits(u_input.a.yz)), countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, arg_0), vec2<u32>(_wgslsmith_div_u32(68986u, 1u), _wgslsmith_mod_u32(arg_0, 0u)))));
    var var_1 = 1i;
    let var_2 = Struct_3(Struct_1(!func_3(false, arg_3, Struct_1(vec4<bool>(true, arg_2.x, false, false), u_input.a.x), 1019f), _wgslsmith_mult_u32(5025u, 1u)), func_1());
    var var_3 = u_input.a.xy;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-725f, -772f, -142f) + vec3<f32>(823f, -945f, -331f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1145f, -1024f, -2604f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(170f, 325f, -639f), vec3<f32>(-767f, -153f, -560f), arg_2.x)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(975f, -1147f, -1009f)))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(753f, -449f, 974f)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1425f), _wgslsmith_f_op_f32(f32(-1f) * -1098f))));
    return var_4.x;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = true;
    var var_1 = vec2<i32>(_wgslsmith_sub_i32(34485i, ~6577i), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-61017i, -6876i, 0i), _wgslsmith_mod_i32(firstLeadingBit(countOneBits(40773i)), 1i)));
    var var_2 = countOneBits(~(~abs(vec4<u32>(78138u, u_input.a.x, 4919u, arg_2.b) & vec4<u32>(arg_1.b, u_input.a.x, arg_2.b, 0u))));
    var var_3 = Struct_3(Struct_1(select(arg_1.a, arg_2.a, arg_2.a.x), _wgslsmith_mult_u32(42575u, 0u)), func_1());
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(!vec2<bool>(true, any(vec2<bool>(false, true))));
    var var_1 = func_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(916f * -1000f))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_4(~1u, var_0.a.x, !vec3<bool>(true, var_0.a.x, false), func_1()))))), Struct_1(vec4<bool>(var_0.a.x != var_0.a.x, true, var_0.a.x | var_0.a.x, !(true || var_0.a.x)), _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x) ^ u_input.a.x, u_input.a.x)), Struct_1(select(select(vec4<bool>(var_0.a.x, false, var_0.a.x, false), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), func_3(true, Struct_2(var_0.a.x), Struct_1(vec4<bool>(true, true, var_0.a.x, var_0.a.x), 1u), -738f)), !(!vec4<bool>(true, var_0.a.x, var_0.a.x, true)), vec4<bool>(func_1().a, all(vec4<bool>(true, false, var_0.a.x, true)), true, all(vec4<bool>(var_0.a.x, false, var_0.a.x, false)))), u_input.a.x));
    var_1 = Struct_2(true);
    var_1 = func_5(909f, Struct_1(select(!select(vec4<bool>(var_1.a, var_1.a, false, var_1.a), vec4<bool>(var_1.a, true, true, var_1.a), var_0.a.x), !vec4<bool>(true, false, var_0.a.x, false), true), firstLeadingBit(min(_wgslsmith_clamp_u32(71057u, 65741u, u_input.a.x), max(u_input.a.x, u_input.a.x)))), Struct_1(func_3(all(select(vec4<bool>(false, var_1.a, var_0.a.x, var_0.a.x), vec4<bool>(false, var_0.a.x, true, var_0.a.x), true)), Struct_2(!var_0.a.x), Struct_1(vec4<bool>(false, var_1.a, var_0.a.x, var_1.a), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(-768f - _wgslsmith_f_op_f32(1246f * 1160f))), _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, 8112u, 48471u)), (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u) | vec4<u32>(5860u, u_input.a.x, 38143u, 4294967295u)) | reverseBits(vec4<u32>(16198u, 0u, 59149u, 4294967295u)))));
    let var_2 = -744f;
    var_1 = Struct_2(true);
    let var_3 = Struct_2(~36178u > u_input.a.x);
    var var_4 = Struct_2(var_0.a.x);
    var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.a.x)), firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.a, _wgslsmith_add_vec3_u32(u_input.a, firstLeadingBit(vec3<u32>(34599u, 1u, u_input.a.x))))), abs(vec3<i32>(62437i << (~u_input.a.x % 32u), i32(-1i) * -51532i, -(~33850i))));
}


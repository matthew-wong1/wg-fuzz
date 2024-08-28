struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_4, 20>;

var<private> global2: vec3<u32> = vec3<u32>(69211u, 29390u, 27594u);

var<private> global3: vec4<i32>;

var<private> global4: bool = false;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
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

fn func_3(arg_0: u32) -> vec2<bool> {
    let var_0 = vec4<bool>(true, all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(39096u == global2.x, true, false, true))), false, false);
    var var_1 = vec4<i32>(~(~firstLeadingBit(~u_input.a)), _wgslsmith_dot_vec2_i32(-vec2<i32>(global3.x, global3.x), global3.yz), _wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(global3.zz, _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, global3.x)), ~vec2<i32>(-1i, 1i)), reverseBits(-vec2<i32>(-2147483647i, -23497i))), firstTrailingBit(u_input.a | -47199i));
    let var_2 = abs(abs(~_wgslsmith_add_vec2_i32(vec2<i32>(1i, var_1.x), vec2<i32>(-7719i, u_input.a))));
    var var_3 = global2.xz;
    var var_4 = Struct_3(Struct_2(!var_0.x), Struct_1(vec2<f32>(1081f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-160f - 1000f) - 1000f)), 2147483647i << ((_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, global2.x), vec2<u32>(var_3.x, 1u)) ^ arg_0) % 32u), select(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(111645u, 13792u), vec2<u32>(arg_0, 19032u)), global2.xx, countOneBits(global2.xy)), ~vec2<u32>(var_3.x, arg_0), var_0.x), all(var_0.yww)), ~_wgslsmith_sub_vec2_i32(countOneBits(global3.xx), -var_2) << (global2.zy % vec2<u32>(32u)), max(u_input.a << (~arg_0 % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 1i, 18131i, u_input.a), ~vec4<i32>(var_1.x, -38717i, u_input.a, global3.x) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, global3.x, var_2.x, 1i), vec4<i32>(-28841i, -6056i, 2147483647i, 1i)))), _wgslsmith_mod_vec2_u32(select(~vec2<u32>(43960u, 65884u), vec2<u32>(global2.x, 1u), all(var_0.xy)), ~(vec2<u32>(27354u, 26752u) | global2.xx)) >> (reverseBits(vec2<u32>(29912u, 53455u)) % vec2<u32>(32u)));
    return var_0.zw;
}

fn func_2() -> vec3<bool> {
    return select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, false)))), select(vec3<bool>(any(func_3(90974u)), func_3(1u).x, all(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(false, false, false)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))) != (any(vec4<bool>(false, true, false, false)) & true)), true);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_2(all(select(select(func_2(), vec3<bool>(true, true, true), true), select(func_2(), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true)), true)));
    let var_1 = Struct_4(global2.zx, Struct_2(var_0.a), global2.x);
    let var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(1i, u_input.a), abs(0i), ~(-44576i), _wgslsmith_dot_vec2_i32(vec2<i32>(6663i, -2147483647i), vec2<i32>(2147483647i, u_input.a))) >> (~vec4<u32>(72565u, 1u, 89835u, global2.x) % vec4<u32>(32u)), vec4<i32>(1i, select(_wgslsmith_mod_i32(global3.x, 1i), _wgslsmith_mod_i32(-1i, -11476i), any(vec4<bool>(false, false, false, false))), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(global3.x, 42290i, -49981i)), vec3<i32>(-5636i, 2104i, 4524i)), 1i)), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, u_input.a, 6109i, global3.x), ~vec4<i32>(-1i, 2147483647i, 21823i, 26683i))) ^ max(vec4<i32>(45952i, 1i, ~global3.x, u_input.a), vec4<i32>(1i, firstLeadingBit(arg_0), -1i, abs(arg_0))));
    global4 = all(select(!select(func_2(), !vec3<bool>(var_1.b.a, var_1.b.a, true), !vec3<bool>(var_1.b.a, var_1.b.a, true)), !vec3<bool>(all(vec3<bool>(var_0.a, var_1.b.a, true)), any(vec4<bool>(true, true, true, true)), var_1.b.a), true));
    var var_3 = u_input.a | 12403i;
    return Struct_1(vec2<f32>(1424f, _wgslsmith_f_op_f32(ceil(-363f))), u_input.a, vec2<u32>(firstLeadingBit(1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.c, global2.x), vec3<u32>(global2.x, global2.x, global2.x))) >> (~firstTrailingBit(~global2.zx) % vec2<u32>(32u)), var_1.b.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = arg_0.d;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1759f, _wgslsmith_div_f32(336f, 343f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, arg_0.a.x))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, arg_0.a.x) + arg_0.a), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(arg_0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(553f, arg_0.a.x)))))), -1i, arg_0.c, arg_0.a.x != 1f);
    global2 = abs(_wgslsmith_mult_vec3_u32(vec3<u32>(46618u, arg_1.x, ~arg_0.c.x), ~vec3<u32>(_wgslsmith_mod_u32(var_1.c.x, var_1.c.x), global2.x & arg_0.c.x, 1u)));
    global4 = all(!select(select(!vec4<bool>(true, arg_0.d, arg_0.d, arg_0.d), select(vec4<bool>(var_0, false, arg_0.d, var_0), vec4<bool>(false, true, true, var_1.d), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(arg_0.d, arg_0.d, var_1.d, true), !vec4<bool>(var_1.d, var_0, false, var_1.d), vec4<bool>(arg_0.d, false, false, arg_0.d)), vec4<bool>(var_1.d, all(vec2<bool>(var_0, var_1.d)), func_2().x, true)));
    global3 = -(~(-(countOneBits(vec4<i32>(0i, u_input.a, 1i, arg_0.b)) << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 18950u, arg_0.c.x, 79136u), vec4<u32>(35310u, 0u, arg_1.x, var_1.c.x)) % vec4<u32>(32u)))));
    return arg_0;
}

fn func_5(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = arg_0.d;
    global4 = all(!vec2<bool>(arg_0.d, func_4(func_4(Struct_1(arg_0.a, arg_0.b, arg_0.c, true), vec2<u32>(global2.x, arg_0.c.x)), vec2<u32>(global2.x, arg_0.c.x)).d));
    let var_1 = _wgslsmith_add_u32(~_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0.c.x, global2.x), ~global2.x), 27381u), func_1(-(~(-37298i))).c.x);
    var var_2 = Struct_2(false);
    let var_3 = Struct_3(Struct_2(!(!arg_0.d)), arg_0, _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(1i, global3.x) | -vec2<i32>(1i, global3.x), firstLeadingBit(_wgslsmith_mult_vec2_i32(global3.yy, vec2<i32>(u_input.a, global3.x)))), vec2<i32>(~global3.x, ~(~(-2147483647i)))), arg_0.b, vec2<u32>(~(~func_4(Struct_1(arg_0.a, 2147483647i, global2.yz, var_2.a), global2.yx).c.x), 4294967295u));
    return vec3<bool>(true, false, true);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = all(func_5(func_4(func_1(u_input.a), ~(~vec2<u32>(global2.x, global2.x)))));
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1139f, -504f))), func_1(-1i).a)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-421f, 186f), vec2<f32>(458f, -229f)) + vec2<f32>(-1599f, 1478f)), vec2<f32>(_wgslsmith_f_op_f32(max(396f, -905f)), _wgslsmith_f_op_f32(f32(-1f) * -1067f))))), ~2147483647i, global2.xx, true);
    global1 = array<Struct_4, 20>();
    var var_1 = !select(func_2(), vec3<bool>(false, var_0.d, select(var_0.b, -4502i, var_0.d) <= max(var_0.b, u_input.a)), vec3<bool>(var_0.d, func_3(firstLeadingBit(global2.x)).x, var_0.d));
    global2 = reverseBits(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 32273u, _wgslsmith_mod_u32(global2.x, 71834u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, 11043u), vec3<u32>(global2.x, 37298u, 62307u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(global3.x, u_input.a, 1i, global3.x)), vec4<i32>(2147483647i, global3.x, 36096i, 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(global3.x, var_0.b, -1i, global3.x), vec4<i32>(global3.x, -46163i, -2147483647i, 1i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(-38309i, -12496i, -29259i, var_0.b), vec4<i32>(u_input.a, u_input.a, 27204i, u_input.a))) | ~vec4<i32>(u_input.a, var_0.b, ~3095i, 2147483647i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -807f) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x) + vec4<f32>(581f, -345f, var_0.a.x, var_0.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.x, var_0.a.x, -964f, var_0.a.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 845f, 100f, var_0.a.x))))), global3.x);
}


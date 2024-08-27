struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, true, false, false, false, true, false, true, true, false, true, true, true);

var<private> global1: u32 = 4294967295u;

var<private> global2: Struct_3 = Struct_3(vec2<u32>(0u, 4294967295u), true, -384f);

var<private> global3: f32;

var<private> global4: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: bool) -> bool {
    let var_0 = Struct_4(vec4<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(~(~global2.a.x)), 13u)], true, false, _wgslsmith_f_op_f32(max(-898f, _wgslsmith_f_op_f32(trunc(global2.c)))) >= global2.c), Struct_3(~u_input.e.yz, global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.e.x, arg_1.x), 13u)], _wgslsmith_f_op_f32(global2.c * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -923f), _wgslsmith_f_op_f32(-global2.c)))));
    var var_1 = ~_wgslsmith_sub_vec3_i32(-(vec3<i32>(global4.a.x, global4.a.x, -2147483647i) & firstLeadingBit(vec3<i32>(arg_0.x, u_input.c.x, u_input.a))), abs(vec3<i32>(_wgslsmith_mult_i32(-2147483647i, 1i), arg_0.x, -global4.a.x)));
    let var_2 = var_0.b;
    var_1 = abs(select(-(~vec3<i32>(u_input.a, var_1.x, var_1.x)), min(~vec3<i32>(0i, 2147483647i, u_input.b.x), ~arg_0), !var_0.a.yyz)) | _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, 21991i, global4.a.x), vec3<i32>(-1i) * -vec3<i32>(var_1.x, u_input.b.x, u_input.c.x)), u_input.c.wzy | global4.a);
    var var_3 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-(i32(-1i) * -7519i), abs(-5465i) << (select(12090u, u_input.e.x, true) % 32u), ~(-arg_0.x)), ~u_input.c.yzz & select(firstLeadingBit(vec3<i32>(-229i, 2147483647i, -1i)), abs(vec3<i32>(26068i, 2147483647i, 5567i)), !global0[_wgslsmith_index_u32(55603u, 13u)]), countOneBits(arg_0)));
    return all(vec3<bool>(true, !(select(true, false, true) != any(vec2<bool>(true, true))), any(select(var_0.a.xxw, var_0.a.yxw, 1754u > var_0.b.a.x))));
}

fn func_2() -> vec4<bool> {
    return select(!(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 13u)], all(vec4<bool>(true, global2.b, global2.b, global2.b)), false, false)), !select(select(!vec4<bool>(false, global2.b, global2.b, false), !vec4<bool>(true, false, false, global2.b), vec4<bool>(false, global2.b, global2.b, global2.b)), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global2.b, global0[_wgslsmith_index_u32(0u, 13u)], true), vec4<bool>(true, global2.b, global2.b, false), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 13u)], global2.b, global0[_wgslsmith_index_u32(u_input.e.x, 13u)])), vec4<bool>(global0[_wgslsmith_index_u32(8551u, 13u)] && true, true, global4.a.x >= u_input.c.x, global2.b)), !vec4<bool>(func_3(vec3<i32>(global4.a.x, -963i, 2147483647i), vec4<u32>(global2.a.x, global2.a.x, u_input.d, u_input.e.x), global0[_wgslsmith_index_u32(global2.a.x, 13u)]) || !global0[_wgslsmith_index_u32(17390u, 13u)], false, true, global2.b));
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_4(select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 13u)], !global0[_wgslsmith_index_u32(44939u, 13u)], !global2.b, true), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 13u)], false, true, true)), !vec4<bool>(global2.b, global2.b, global2.b, true), global2.b), select(!func_2(), vec4<bool>(global2.c == 1132f, select(global0[_wgslsmith_index_u32(52693u, 13u)], true, false), global0[_wgslsmith_index_u32(1u, 13u)], true), !select(vec4<bool>(global0[_wgslsmith_index_u32(75093u, 13u)], true, false, global2.b), vec4<bool>(global0[_wgslsmith_index_u32(4859u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(48463u, 13u)], true), true))), Struct_3(global2.a, _wgslsmith_f_op_f32(950f - global2.c) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-991f, -492f) - _wgslsmith_f_op_f32(-233f + -267f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-831f * global2.c) - -1133f))));
    var var_1 = Struct_5(var_0.b, ~firstLeadingBit(~vec3<i32>(u_input.b.x, u_input.b.x, -1i)), all(var_0.a));
    let var_2 = func_2();
    let var_3 = Struct_4(var_0.a, Struct_3(select(~global2.a, _wgslsmith_mod_vec2_u32(~var_0.b.a, select(u_input.e.zz, vec2<u32>(var_1.a.a.x, 23646u), var_2.x)), select(!vec2<bool>(true, var_0.a.x), vec2<bool>(var_2.x, true), var_2.xz)), reverseBits(_wgslsmith_sub_i32(1i, global4.a.x)) <= -37862i, var_0.b.c));
    let var_4 = -(~min(2147483647i, 1i));
    return var_3.a.xwz;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(785f, global2.c), global2.c, _wgslsmith_f_op_f32(175f + 238f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.c, 1105f, global2.c))))), select(func_1(), func_2().zxy, global2.b))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.c, global2.c, global2.c), vec3<f32>(1108f, -1580f, 847f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1229f, -1764f, -421f)))))))), vec3<i32>(0i, _wgslsmith_sub_i32(countOneBits(global4.a.x | global4.a.x), 2147483647i << (u_input.e.x % 32u)), select(u_input.a, 0i, true)), firstLeadingBit(_wgslsmith_sub_i32(firstLeadingBit(~22990i), global4.a.x)), global2.c);
}


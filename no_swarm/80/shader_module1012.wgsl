struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(4294967295u, 28667u, 1u);

var<private> global1: Struct_1;

var<private> global2: vec2<u32>;

var<private> global3: vec4<f32> = vec4<f32>(367f, -471f, -807f, 480f);

var<private> global4: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(47738u, true), Struct_1(1u, false), Struct_1(14115u, false), Struct_1(5030u, false), Struct_1(1u, false), Struct_1(4294967295u, true), Struct_1(0u, false), Struct_1(1u, false), Struct_1(0u, false), Struct_1(47708u, false), Struct_1(27187u, false), Struct_1(1u, true), Struct_1(59057u, false), Struct_1(1u, true), Struct_1(44360u, true), Struct_1(1u, false), Struct_1(4294967295u, false), Struct_1(42681u, true), Struct_1(1u, true), Struct_1(72020u, false), Struct_1(4294967295u, false), Struct_1(0u, false), Struct_1(0u, false), Struct_1(17779u, true), Struct_1(0u, true), Struct_1(4624u, false), Struct_1(1u, true), Struct_1(58787u, false), Struct_1(69677u, false), Struct_1(7059u, false), Struct_1(13211u, false));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global4 = array<Struct_1, 31>();
    var var_0 = global1.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) * 1552f), -998f, global3.x) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, global3.x) - global3.zwx)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.x, -889f, 1211f), global3.xwy)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(892f, global3.x, global3.x)))))));
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~72025u), 31u)];
    global4 = array<Struct_1, 31>();
    return abs(countOneBits(global2.x));
}

fn func_2() -> vec2<bool> {
    let var_0 = global4[_wgslsmith_index_u32(countOneBits(~func_3(Struct_1(global2.x | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], global1.b))), 31u)];
    return select(select(select(vec2<bool>(!var_0.b, true), vec2<bool>(true, global1.b), select(select(vec2<bool>(var_0.b, true), vec2<bool>(false, true), false), vec2<bool>(global1.b, false), global1.b)), select(vec2<bool>(true, !var_0.b), vec2<bool>(false, any(vec4<bool>(global1.b, false, global1.b, true))), select(vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, true), global1.b)), !vec2<bool>(var_0.b, true)), vec2<bool>(true, true), true);
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = 20394u;
    let var_1 = abs((u_input.a.xy << (select(~vec2<u32>(0u, 48904u), min(vec2<u32>(var_0, 6490u), vec2<u32>(global0[_wgslsmith_index_u32(global1.a, 3u)], global1.a)), 78779u < global2.x) % vec2<u32>(32u))) >> (~(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.a, global2.x), vec2<u32>(global0[_wgslsmith_index_u32(0u, 3u)], global2.x)) & vec2<u32>(14253u, var_0)) % vec2<u32>(32u)));
    var var_2 = any(vec3<bool>(true, true, true));
    global0 = array<u32, 3>();
    var var_3 = min(~(_wgslsmith_mod_vec3_u32(vec3<u32>(87961u, global2.x, global2.x), vec3<u32>(global0[_wgslsmith_index_u32(1u, 3u)], 4294967295u, 16160u)) >> (firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(var_0, 3u)], 249u, var_0)) % vec3<u32>(32u))) ^ reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(var_0, global0[_wgslsmith_index_u32(24926u, 3u)], 9946u), ~vec3<u32>(global2.x, 11789u, 0u))), firstLeadingBit(vec3<u32>(50458u, ~var_0, 0u)));
    return Struct_1(~global2.x, all(!select(vec3<bool>(arg_0.x, global1.b, arg_0.x), vec3<bool>(false, global1.b, false), vec3<bool>(false, arg_0.x, global1.b))) && ((all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)) & (global3.x >= global3.x)) && arg_0.x));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = !vec3<bool>(global1.b, !global1.b, global1.b);
    var var_1 = 17030u;
    var_0 = !select(select(!select(vec3<bool>(true, true, arg_1.b), vec3<bool>(arg_1.b, arg_1.b, false), vec3<bool>(true, arg_1.b, arg_1.b)), !select(vec3<bool>(true, true, var_0.x), vec3<bool>(true, true, arg_1.b), vec3<bool>(var_0.x, true, arg_1.b)), !var_0.x), select(select(vec3<bool>(arg_1.b, true, arg_1.b), select(vec3<bool>(arg_1.b, false, false), vec3<bool>(false, var_0.x, arg_1.b), true), all(vec3<bool>(var_0.x, true, false))), !vec3<bool>(true, arg_1.b, arg_1.b), vec3<bool>(!var_0.x, 1135f <= global3.x, all(vec4<bool>(true, arg_1.b, arg_1.b, var_0.x)))), arg_1.b);
    var var_2 = arg_1;
    var_1 = ~_wgslsmith_div_u32(var_2.a, 18263u);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-488f)) + 1142f)))), -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, global3.x) * 935f)))), -1671f);
}

fn func_1() -> Struct_1 {
    var var_0 = abs(vec3<i32>(_wgslsmith_mult_i32(0i, -33713i), 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a.x) ^ ~vec2<i32>(2147483647i, 0i), vec2<i32>(u_input.a.x, u_input.a.x) ^ vec2<i32>(u_input.a.x, u_input.a.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_5(vec4<i32>(0i, 1158i, u_input.a.x, 32922i) >> (vec4<u32>(global1.a, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], global0[_wgslsmith_index_u32(global2.x, 3u)]) % vec4<u32>(32u)), func_4(func_2()))))) + _wgslsmith_f_op_vec4_f32(func_5(vec4<i32>(u_input.a.x, 31101i, -44505i, 1i & max(u_input.a.x, var_0.x)), func_4(!(!vec2<bool>(true, global1.b))))));
    global4 = array<Struct_1, 31>();
    let var_2 = func_4(select(vec2<bool>(global1.b, !(!global1.b)), !(!(!vec2<bool>(global1.b, global1.b))), vec2<bool>(global1.b, true)));
    var var_3 = all(select(select(vec2<bool>(global1.b, global1.b != false), !(!vec2<bool>(global1.b, false)), !select(vec2<bool>(true, false), vec2<bool>(true, true), global1.b)), func_2(), vec2<bool>(all(vec4<bool>(false, true, var_2.b, false)), var_2.b)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_1();
    var var_2 = var_1.b;
    let var_3 = func_2();
    global2 = min(vec2<u32>(var_0.a, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(7199u, global1.a), vec2<u32>(4294967295u, 5769u), vec2<u32>(0u, 49815u))), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a, 4294967295u), vec2<u32>(4294967295u, global1.a))))), _wgslsmith_mod_vec2_u32(vec2<u32>(47764u & global0[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_mult_u32(global2.x, var_1.a)), vec2<u32>(4294967295u, 31594u) << (~vec2<u32>(var_0.a, global2.x) % vec2<u32>(32u))) & vec2<u32>(func_3(func_1()), 29505u));
    let var_4 = var_0.b;
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.x))) - global3.x);
    var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.a.x), min(reverseBits(i32(-1i) * -256i), ~select(u_input.a.x, _wgslsmith_div_i32(883i, u_input.a.x), true)), _wgslsmith_f_op_f32(f32(-1f) * -311f), firstTrailingBit(select(vec4<i32>(1i, ~0i, 1i & u_input.a.x, -989i), ~vec4<i32>(42129i, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<i32>(u_input.a.x, u_input.a.x, -21966i, u_input.a.x), any(var_3))), u_input.a.x);
}


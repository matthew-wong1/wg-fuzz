struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-34120i, Struct_1(vec4<u32>(1u, 1u, 87441u, 0u), 39991u, -463f), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 1u), 26295u, 1349f), Struct_1(vec4<u32>(133618u, 0u, 1u, 67695u), 1u, -1170f), Struct_1(vec4<u32>(14625u, 1u, 5249u, 0u), 4294967295u, 560f)));

var<private> global1: f32 = 132f;

var<private> global2: array<bool, 1>;

var<private> global3: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = select(select(!(!vec3<bool>(global2[_wgslsmith_index_u32(global0.b.b, 1u)], false, false)), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(59612u, global0.b.b << (u_input.a.x % 32u)), 1u)], global2[_wgslsmith_index_u32(countOneBits(min(26143u, u_input.a.x)), 1u)], any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(2950u, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)]))), !select(!vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], true), select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(42628u, 1u)], global2[_wgslsmith_index_u32(global0.c.a.b, 1u)]), vec3<bool>(true, true, true)), true)), select(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, global0.c.c.b), ~global0.b.a.x), 1u)], true, _wgslsmith_f_op_f32(trunc(128f)) > 737f), select(select(vec3<bool>(global2[_wgslsmith_index_u32(global0.c.c.a.x, 1u)], true, false), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], true, global2[_wgslsmith_index_u32(1u, 1u)]), vec3<bool>(true, true, true)), select(vec3<bool>(global2[_wgslsmith_index_u32(global0.c.b.a.x, 1u)], global2[_wgslsmith_index_u32(21985u, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)]), select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(global0.b.a.x, 1u)]), vec3<bool>(false, true, global2[_wgslsmith_index_u32(global0.c.a.a.x, 1u)]), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(global0.c.c.b, 1u)], true)), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], false, global2[_wgslsmith_index_u32(global0.b.b, 1u)]), vec3<bool>(true, false, global2[_wgslsmith_index_u32(15700u, 1u)]), global2[_wgslsmith_index_u32(1u, 1u)])), vec3<bool>(global2[_wgslsmith_index_u32(global0.c.b.a.x, 1u)], true, false)), false), false);
    let var_1 = Struct_4(~(abs(vec4<i32>(global0.a, 35230i, 0i, 1i)) ^ (-vec4<i32>(0i, -23072i, 1i, global0.a) << (vec4<u32>(global0.c.b.a.x, 1u, u_input.a.x, 7195u) % vec4<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(943f * _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(global0.c.c.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(211f)) * arg_0)), -343f));
    var var_2 = vec2<bool>(true, all(var_0));
    let var_3 = vec4<u32>(global0.c.c.b, global0.c.b.a.x, ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a, global0.b.a.wz, vec2<u32>(4294967295u, global0.c.b.b)) | vec2<u32>(u_input.a.x, u_input.a.x), countOneBits(abs(global0.b.a.xy))), _wgslsmith_dot_vec2_u32(~countOneBits(u_input.a), _wgslsmith_div_vec2_u32(u_input.a, ~vec2<u32>(global0.c.a.b, 0u))));
    global1 = var_1.b.x;
    return var_2.x;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_3) -> vec3<i32> {
    global2 = array<bool, 1>();
    var var_0 = Struct_4(firstTrailingBit(~arg_1.a), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -244f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.b.x + arg_2.c.a.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.b.c - -233f))), -314f))));
    global3 = _wgslsmith_div_i32(-74564i, ~arg_1.a.x);
    global2 = array<bool, 1>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -205f);
    return -(~(~((vec3<i32>(25315i, arg_1.a.x, arg_2.a) << (arg_2.b.a.yxx % vec3<u32>(32u))) & var_0.a.wzx)));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> Struct_4 {
    global0 = Struct_3(global0.a, Struct_1(min((vec4<u32>(global0.c.b.a.x, 59449u, 4294967295u, global0.c.c.a.x) & vec4<u32>(0u, arg_0.x, 45974u, 11388u)) ^ global0.c.b.a, ~global0.b.a), u_input.a.x, global0.b.c), Struct_2(Struct_1(global0.c.a.a, ~0u, _wgslsmith_f_op_f32(trunc(global0.b.c))), global0.c.a, Struct_1(~vec4<u32>(arg_0.x, 37507u, arg_0.x, arg_0.x) & global0.c.c.a, ~global0.b.b << (firstLeadingBit(u_input.a.x) % 32u), global0.b.c)));
    global3 = 56685i;
    let var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(~func_4(func_3(global0.c.a.c), Struct_4(vec4<i32>(global0.a, 0i, -8466i, u_input.b), vec4<f32>(872f, -260f, global0.b.c, global0.b.c)), Struct_3(56558i, global0.c.b, global0.c)), ~vec3<i32>(_wgslsmith_mult_i32(u_input.b, 2147483647i), abs(1i), ~global0.a), vec3<i32>(20574i, _wgslsmith_add_i32(-1i, 1i), _wgslsmith_sub_i32(global0.a << (u_input.a.x % 32u), -32638i))), vec3<i32>(2147483647i, global0.a, 7431i));
    let var_1 = Struct_5(8197u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.c, global0.b.c) * vec2<f32>(global0.b.c, -477f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -1555f))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.c.c.c, global0.b.c))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.c, 1716f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(743f, 1853f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.b.c, global0.b.c)))), vec2<bool>(select(true, arg_1, global0.a == -2147483647i), global2[_wgslsmith_index_u32(~25085u, 1u)]))), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, ~_wgslsmith_mod_i32(u_input.b, global0.a)), var_0.yx), !(!vec2<bool>(1i != u_input.b, !global2[_wgslsmith_index_u32(arg_0.x, 1u)])));
    let var_2 = select(vec4<bool>(_wgslsmith_f_op_f32(step(817f, var_1.b.x)) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(514f)))), true, all(vec2<bool>(global0.c.b.c > global0.c.a.c, true)), all(vec3<bool>(true, true, true))), vec4<bool>(global2[_wgslsmith_index_u32(global0.c.a.b, 1u)] | arg_1, global2[_wgslsmith_index_u32(firstLeadingBit(var_1.a), 1u)], global2[_wgslsmith_index_u32(9600u, 1u)], (min(u_input.b, u_input.b) == var_0.x) && all(!var_1.d)), true);
    return Struct_4(vec4<i32>(-11507i, u_input.b, _wgslsmith_mult_i32(~(-u_input.b), reverseBits(var_1.c.x ^ -38800i)), _wgslsmith_mod_i32(~countOneBits(-75568i), var_0.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-180f, 343f, 831f, var_1.b.x), vec4<f32>(var_1.b.x, 361f, 696f, -607f)))), vec4<f32>(global0.b.c, var_1.b.x, _wgslsmith_f_op_f32(max(var_1.b.x, _wgslsmith_f_op_f32(var_1.b.x * -611f))), _wgslsmith_f_op_f32(-var_1.b.x)))));
}

fn func_1() -> i32 {
    global2 = array<bool, 1>();
    let var_0 = func_2(global0.c.a.a.ywz, global2[_wgslsmith_index_u32(abs(15017u), 1u)]);
    let var_1 = Struct_2(Struct_1(~global0.c.a.a, 1u, -284f), global0.b, global0.c.c);
    let var_2 = Struct_5(4294967295u, var_0.b.yw, _wgslsmith_div_vec2_i32(var_0.a.yx, vec2<i32>(_wgslsmith_clamp_i32(~45705i, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-3297i, global0.a, u_input.b), var_0.a.zxz)), -35414i)), !(!vec2<bool>(false | global2[_wgslsmith_index_u32(u_input.a.x, 1u)], !global2[_wgslsmith_index_u32(131710u, 1u)])));
    global1 = -578f;
    return var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global0.c.b.a.zy;
    var var_1 = abs(-(global0.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), ~vec2<u32>(4294967295u, global0.b.a.x)) % 32u)));
    global3 = _wgslsmith_mod_i32(~func_1(), ~u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.b, u_input.b), _wgslsmith_add_i32(4432i, u_input.b)), -33242i), select(0u, u_input.a.x | ~4294967295u, func_3(_wgslsmith_f_op_f32(exp2(global0.c.b.c)))) << (_wgslsmith_mod_u32(var_0.x, global0.c.a.b) % 32u), firstTrailingBit(abs(select(firstTrailingBit(vec3<i32>(global0.a, -2911i, u_input.b)), func_4(global2[_wgslsmith_index_u32(13206u, 1u)], Struct_4(vec4<i32>(0i, 2147483647i, u_input.b, -2147483647i), vec4<f32>(global0.c.c.c, -234f, -290f, global0.c.a.c)), Struct_3(-1i, global0.b, global0.c)), any(vec3<bool>(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(global0.b.b, 1u)]))))));
}


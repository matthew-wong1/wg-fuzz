struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

var<private> global2: array<vec3<u32>, 28>;

var<private> global3: array<f32, 28>;

var<private> global4: array<vec4<u32>, 21>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> vec3<bool> {
    var var_0 = arg_1;
    global0 = true;
    global1 = !vec3<bool>(false, !global1.x, false);
    var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(arg_1, 28u)], global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)]))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -729f), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1, arg_1), 28u)], _wgslsmith_f_op_f32(sign(-1493f))))) - vec3<f32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1, 95701u) | arg_1, 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_1, 28u)] + 343f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_1, 28u)]))))));
    return !vec3<bool>(true, !(_wgslsmith_dot_vec4_u32(vec4<u32>(43423u, 0u, 1u, arg_1), vec4<u32>(0u, arg_1, 4294967295u, arg_1)) == arg_1), global1.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: i32, arg_3: vec3<bool>) -> vec2<i32> {
    return _wgslsmith_clamp_vec2_i32(arg_0.zx, vec2<i32>(~(-1i), arg_2) & ~u_input.a.xy, ~(vec2<i32>(1i, 1i) >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), firstLeadingBit(vec2<u32>(1u, 22276u))) % vec2<u32>(32u))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = arg_3.b.x;
    let var_1 = false;
    var var_2 = -func_4(min(-vec4<i32>(1i, 25160i, -2147483647i, u_input.a.x) ^ min(u_input.b, vec4<i32>(1i, u_input.a.x, u_input.b.x, u_input.b.x)), u_input.b), -(arg_3.a.xx << (firstLeadingBit(arg_3.b) % vec2<u32>(32u))), arg_3.a.x, func_3(~arg_3.c, var_0));
    return global1.xy;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 28u)]);
    global1 = !(!vec3<bool>(all(func_2(global1.x, global3[_wgslsmith_index_u32(1u, 28u)], -1i, Struct_1(u_input.a, vec2<u32>(arg_2, 0u), u_input.a, vec2<f32>(-265f, 366f)))), func_2(arg_0.x, 676f, arg_1 >> (arg_2 % 32u), Struct_1(vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x), vec2<u32>(arg_2, arg_2), u_input.b.wzx, vec2<f32>(global3[_wgslsmith_index_u32(arg_2, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)]))).x, global1.x));
    let var_1 = Struct_2(~(arg_2 >> (reverseBits(arg_2) % 32u)), Struct_1(countOneBits(vec3<i32>(countOneBits(-2147483647i), 26631i, abs(-1i))), vec2<u32>(~1u, 33266u), vec3<i32>(u_input.a.x, u_input.a.x | arg_1, ~u_input.a.x) << (~(~global2[_wgslsmith_index_u32(arg_2, 28u)]) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(269f, global3[_wgslsmith_index_u32(arg_2, 28u)]) - vec2<f32>(global3[_wgslsmith_index_u32(arg_2, 28u)], -1911f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(457f, global3[_wgslsmith_index_u32(arg_2, 28u)]) * vec2<f32>(global3[_wgslsmith_index_u32(arg_2, 28u)], global3[_wgslsmith_index_u32(20625u, 28u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(0u, 28u)], global3[_wgslsmith_index_u32(arg_2, 28u)]))))));
    let var_2 = Struct_4(Struct_2(56877u, var_1.b));
    global1 = func_3(countOneBits(var_2.a.b.a) << ((vec3<u32>(84043u, ~0u, ~arg_2) | _wgslsmith_div_vec3_u32(global2[_wgslsmith_index_u32(38771u, 28u)], vec3<u32>(51215u, 41353u, 1u))) % vec3<u32>(32u)), abs(var_2.a.a));
    return var_2;
}

fn func_5(arg_0: bool, arg_1: Struct_4) -> vec3<u32> {
    let var_0 = 1u;
    var var_1 = _wgslsmith_mult_u32(~_wgslsmith_mod_u32(0u, var_0), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 0u, 57113u, 1u)), global4[_wgslsmith_index_u32(4365u, 21u)])) <= 4294967295u;
    var var_2 = Struct_1(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, 1i), abs(-1i)), 2147483647i, arg_1.a.b.a.x), -arg_1.a.b.a.x | countOneBits(countOneBits(u_input.b.x)), i32(-1i) * -21498i), arg_1.a.b.b, u_input.b.xwy, vec2<f32>(func_1(global1.zy, -(~u_input.a.x), 65380u).a.b.d.x, _wgslsmith_f_op_f32(-arg_1.a.b.d.x)));
    var var_3 = Struct_1(~_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a.x, u_input.a.x, var_2.a.x), var_2.c, vec3<i32>(arg_1.a.b.a.x, 22761i, 18579i)), var_2.c), ~vec2<u32>(countOneBits(1u), var_2.b.x) << (arg_1.a.b.b % vec2<u32>(32u)), ~(~(-vec3<i32>(0i, -2147483647i, arg_1.a.b.c.x))), arg_1.a.b.d);
    let var_4 = max(u_input.b, ~_wgslsmith_clamp_vec4_i32(max(u_input.b, vec4<i32>(-8683i, 2147483647i, var_2.c.x, u_input.a.x) | u_input.b), vec4<i32>(arg_1.a.b.a.x, ~u_input.b.x, 1i, arg_1.a.b.a.x), -vec4<i32>(11590i, var_2.c.x, u_input.a.x, -10728i)));
    return vec3<u32>(_wgslsmith_div_u32(~40584u, firstTrailingBit(select(_wgslsmith_div_u32(var_2.b.x, 0u), ~var_3.b.x, global1.x))), var_2.b.x, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    let var_1 = 10105i;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(max(func_5(all(vec4<bool>(global1.x, true, global1.x, global1.x)), func_1(vec2<bool>(false, global1.x), -15709i, 1u)), select(max(vec3<u32>(76826u, 0u, 69968u), global2[_wgslsmith_index_u32(14238u, 28u)]), vec3<u32>(16336u, 39861u, 56197u), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, global1.x, global1.x), global1.x)))));
}


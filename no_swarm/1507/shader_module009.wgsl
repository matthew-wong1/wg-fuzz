struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: i32;

var<private> global2: array<vec3<bool>, 28>;

var<private> global3: Struct_2 = Struct_2(vec3<f32>(-877f, 2376f, -1113f), true, vec4<f32>(-308f, -487f, 1231f, 102f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1) -> f32 {
    global1 = arg_1.x;
    var var_0 = ~1u;
    var var_1 = ~reverseBits(vec2<u32>(_wgslsmith_mod_u32(~1u, 1u), arg_2.a));
    var_0 = 0u;
    var var_2 = any(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(global0.x >> ((arg_2.a << (1u % 32u)) % 32u), global0.x)), 28u)]);
    return -1207f;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-360f, _wgslsmith_div_f32(1125f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(141f, global3.c.x), global3.c.x))), global3.c.x, _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.c.x, global3.c.x, global3.a.x))), true, _wgslsmith_f_op_vec4_f32(-global3.c)), countOneBits(vec2<i32>(u_input.a.x, -32714i)) >> (global0.xy % vec2<u32>(32u)), arg_1))) + global3.c);
    let var_1 = ~(~(~global0.xww));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(477f, _wgslsmith_div_f32(global3.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -213f) - -443f)), var_0.x) - vec4<f32>(_wgslsmith_f_op_f32(-1086f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(150f, global3.c.x) - _wgslsmith_div_f32(var_0.x, 791f))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -239f), _wgslsmith_f_op_f32(exp2(global3.c.x))));
    global3 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.zzz), global3.b, vec4<f32>(global3.c.x, _wgslsmith_f_op_f32(func_3(Struct_2(var_0.xxx, all(vec2<bool>(global3.b, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1143f, 1295f, global3.c.x, -1623f) * vec4<f32>(3293f, global3.a.x, -1096f, 796f))), vec2<i32>(u_input.a.x, -5335i), arg_1)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) - global3.a.x)));
    var var_2 = _wgslsmith_div_u32(~countOneBits(arg_1.a), 17747u);
    return abs(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, ~49154i, u_input.a.x)), vec3<i32>(~firstLeadingBit(u_input.a.x), firstTrailingBit(-1i), 5782i)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = global0.x;
    let var_1 = firstLeadingBit(~(~global0.zyx) | (arg_1 | vec3<u32>(u_input.b.x, 4294967295u, arg_1.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-arg_2.c);
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * -501f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-643f + global3.a.x), var_2.x))), -1430f, !any(vec4<bool>(global3.b | true, global3.a.x > arg_2.a.x, true, var_2.x > -1000f))));
    global1 = (arg_0.x & (max(arg_0.x, -arg_0.x) >> (28104u % 32u))) >> (~1u % 32u);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1140f), _wgslsmith_f_op_f32(f32(-1f) * -1508f), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(trunc(-1565f))))), all(global2[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1974f, 1179f, -291f) + vec4<f32>(arg_2.a.x, 1187f, 1000f, arg_2.c.x)) * vec4<f32>(-429f, arg_2.c.x, global3.a.x, arg_2.c.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_2.c)))));
}

fn func_1() -> Struct_1 {
    let var_0 = ((vec2<u32>(u_input.b.x, 4294967295u) & _wgslsmith_mod_vec2_u32(vec2<u32>(31419u, 4294967295u), reverseBits(global0.wx))) ^ ~(~(~vec2<u32>(0u, u_input.b.x)))) << (~(~u_input.b) % vec2<u32>(32u));
    global3 = func_4(countOneBits(_wgslsmith_sub_vec3_i32(func_2(vec4<bool>(global3.b, false, true, true), Struct_1(u_input.b.x)), func_2(vec4<bool>(global3.b, true, true, false), Struct_1(1u)))), global0.yzw, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1007f, global3.a.x), global3.c.x, _wgslsmith_f_op_f32(-global3.c.x))), global3.b, global3.c));
    var var_1 = vec3<f32>(-520f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global3.a.x, 1f)), -132f), -960f);
    let var_2 = var_0;
    let var_3 = var_2.x;
    return Struct_1(var_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = select(select(!vec4<bool>(select(true, global3.b, false), false && global3.b, false, true != global3.b), select(vec4<bool>(true, !global3.b, true, all(global2[_wgslsmith_index_u32(global0.x, 28u)])), select(!vec4<bool>(global3.b, global3.b, global3.b, true), !vec4<bool>(true, false, false, global3.b), vec4<bool>(global3.b, true, global3.b, global3.b)), !(global3.a.x == global3.c.x)), false), !select(vec4<bool>(global3.b, false, func_4(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), global0.zwx, Struct_2(vec3<f32>(global3.c.x, global3.a.x, global3.a.x), global3.b, vec4<f32>(-1000f, 1053f, 612f, global3.a.x))).b, false), select(!vec4<bool>(true, true, global3.b, global3.b), vec4<bool>(global3.b, false, global3.b, true), !vec4<bool>(global3.b, global3.b, global3.b, false)), vec4<bool>(global3.b || global3.b, global3.b, any(global2[_wgslsmith_index_u32(u_input.b.x, 28u)]), true)), select(select(select(vec4<bool>(global3.b, false, global3.b, false), !vec4<bool>(false, false, global3.b, false), !vec4<bool>(global3.b, true, true, global3.b)), !vec4<bool>(true, global3.b, false, false), !(global3.b | true)), !select(vec4<bool>(false, global3.b, global3.b, true), !vec4<bool>(global3.b, true, global3.b, false), !vec4<bool>(true, global3.b, true, global3.b)), global3.b | any(select(vec4<bool>(false, global3.b, global3.b, false), vec4<bool>(false, true, true, global3.b), false))));
    var var_2 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global3.c)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-641f, global3.c.x, 449f, global3.c.x)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-171f, 463f, -789f, -983f))))));
    var_2 = 12538i;
    let var_4 = func_4(max(countOneBits(u_input.a.xzy), _wgslsmith_mod_vec3_i32(u_input.a.yyx, firstLeadingBit(vec3<i32>(u_input.a.x, -27038i, -46204i)))), ~(global0.zyz ^ global0.xyz), Struct_2(global3.a, global3.b, vec4<f32>(1528f, var_3.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(var_3.x + global3.a.x)))));
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-288f * global3.a.x) - _wgslsmith_f_op_f32(ceil(var_5.c.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-833f + 1000f), _wgslsmith_f_op_f32(-var_3.x))), 389f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_4.a.x)))), -1007f), func_1().a);
}


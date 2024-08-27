struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(18977i, 3443i, -74486i, 1i), Struct_1(vec3<u32>(49156u, 1u, 1u), vec3<i32>(i32(-2147483648), 0i, 0i), 1407f), Struct_1(vec3<u32>(12302u, 43300u, 1u), vec3<i32>(i32(-2147483648), -14439i, 34979i), -1000f), 98015u);

var<private> global1: array<u32, 19> = array<u32, 19>(28758u, 8719u, 1u, 0u, 26827u, 0u, 49020u, 12373u, 0u, 4294967295u, 0u, 45611u, 13176u, 4294967295u, 1u, 11573u, 0u, 0u, 27281u);

var<private> global2: array<Struct_4, 29>;

var<private> global3: i32;

var<private> global4: array<bool, 8> = array<bool, 8>(false, true, false, true, true, true, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec2<i32> {
    return -countOneBits(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(global0.c.b.x, 2147483647i)), reverseBits(global0.b.b.zx))) & max(global0.c.b.yz, global0.c.b.zz);
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_3 {
    let var_0 = 23971u;
    var var_1 = true;
    global3 = _wgslsmith_dot_vec2_i32(~firstTrailingBit(vec2<i32>(-5404i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.b.x, 0i), arg_1.b.b.xy))), func_3());
    return Struct_3(arg_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-275f, -1430f, arg_1.b.c))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-298f, arg_1.b.c, -1933f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-3009f, arg_1.c.c, global0.c.c)))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_2) -> f32 {
    global3 = _wgslsmith_mult_i32(i32(-1i) * -(34835i >> (global0.d % 32u)), firstTrailingBit(-_wgslsmith_mult_i32(arg_2.b.b.x, arg_2.a.x))) & _wgslsmith_mult_i32(global0.c.b.x, select(_wgslsmith_div_i32(firstLeadingBit(2147483647i), u_input.a), u_input.b.x, !select(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 19u)], 8u)], arg_1.x, arg_1.x)));
    let var_0 = func_2(~(~(~global1[_wgslsmith_index_u32(u_input.c, 19u)])), arg_2);
    var var_1 = Struct_5(!vec4<bool>(global4[_wgslsmith_index_u32(~0u << (~global0.d % 32u), 8u)], !(!arg_1.x), select(all(vec2<bool>(true, false)), false, global0.b.b.x <= 1i), !global4[_wgslsmith_index_u32(arg_0.x, 8u)]), arg_2);
    global3 = var_0.a.b.x;
    global1 = array<u32, 19>();
    return _wgslsmith_f_op_f32(-957f + 213f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-235f, global0.b.c), vec2<f32>(global0.c.c, global0.c.c))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1357f, global0.c.c) * vec2<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(func_1(global0.b.a.xz, vec3<bool>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 19u)], 8u)], false, false), Struct_2(vec4<i32>(-65409i, -2147483647i, -26732i, 2147483647i), Struct_1(global0.b.a, global0.b.b, 1427f), global0.c, 4294967295u)))), _wgslsmith_div_f32(var_0.x, global0.c.c))), vec2<f32>(global0.c.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.c), 1315f)))));
    var var_1 = Struct_5(select(!select(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.c, 8u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.d, 19u)], 8u)], global4[_wgslsmith_index_u32(52167u, 8u)], true), !vec4<bool>(false, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15714u, 19u)], 8u)], global4[_wgslsmith_index_u32(u_input.c, 8u)], global4[_wgslsmith_index_u32(51154u, 8u)]), !vec4<bool>(true, false, global4[_wgslsmith_index_u32(4294967295u, 8u)], global4[_wgslsmith_index_u32(0u, 8u)])), !select(vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.c, 8u)], global4[_wgslsmith_index_u32(global0.b.a.x, 8u)], false), vec4<bool>(global4[_wgslsmith_index_u32(global0.c.a.x, 8u)], true, global4[_wgslsmith_index_u32(23641u, 8u)], true), false), any(select(!vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.c, 8u)], global4[_wgslsmith_index_u32(0u, 8u)], global4[_wgslsmith_index_u32(global0.c.a.x, 8u)]), vec4<bool>(global4[_wgslsmith_index_u32(16063u, 8u)], global4[_wgslsmith_index_u32(52210u, 8u)], true, global4[_wgslsmith_index_u32(u_input.c, 8u)]), global4[_wgslsmith_index_u32(abs(42985u), 8u)]))), Struct_2(abs(select(global0.a, vec4<i32>(global0.b.b.x, global0.c.b.x, global0.c.b.x, -2147483647i), vec4<bool>(true, true, false, true))) >> (firstTrailingBit(vec4<u32>(1u, global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(52992u, 19u)], u_input.c)) % vec4<u32>(32u)), global0.c, func_2(11345u, Struct_2(global0.a, global0.c, func_2(u_input.c, Struct_2(vec4<i32>(-43708i, global0.b.b.x, u_input.a, global0.c.b.x), Struct_1(vec3<u32>(72050u, u_input.c, 25717u), vec3<i32>(u_input.a, global0.a.x, 2147483647i), -1276f), global0.b, global0.c.a.x)).a, 0u >> (1u % 32u))).a, 40055u));
    global3 = 0i;
    var var_2 = Struct_5(var_1.a, var_1.b);
    let var_3 = vec2<i32>(_wgslsmith_clamp_i32(0i, global0.b.b.x, var_2.b.a.x), ~_wgslsmith_div_i32(u_input.a, 27426i));
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_clamp_vec4_i32(global0.a, global0.a, vec4<i32>(30363i, var_1.b.b.b.x, 2931i, var_2.b.c.b.x)) | -global0.a));
}


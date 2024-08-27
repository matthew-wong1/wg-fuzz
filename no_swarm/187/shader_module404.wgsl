struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 17> = array<f32, 17>(-1000f, 1706f, 196f, 1000f, -646f, 1000f, 479f, -106f, -2191f, 1978f, 1188f, -814f, -664f, -344f, 618f, 2152f, -1000f);

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<i32>(2147483647i, 13548i, 1i)), Struct_1(vec3<i32>(2147483647i, 2147483647i, -51741i)), Struct_1(vec3<i32>(-11937i, 0i, 9184i)), Struct_1(vec3<i32>(i32(-2147483648), -43097i, -31684i)), Struct_1(vec3<i32>(-13037i, 17844i, -1i)), Struct_1(vec3<i32>(744i, 1i, -22661i)), Struct_1(vec3<i32>(1i, -762i, 64780i)), Struct_1(vec3<i32>(18789i, 8748i, 1279i)), Struct_1(vec3<i32>(2147483647i, -1i, -110i)), Struct_1(vec3<i32>(40292i, 1i, 11516i)), Struct_1(vec3<i32>(0i, 1902i, 0i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: u32) -> f32 {
    var var_0 = !vec4<bool>(any(vec2<bool>(true, all(vec4<bool>(true, false, true, true)))), all(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), any(vec2<bool>(true, true)), !any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)));
    let var_1 = _wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(40105u, 4294967295u), ~(u_input.a.zw ^ vec2<u32>(arg_3, arg_1.x)))) ^ ~firstTrailingBit(abs(13056u));
    global0 = global3[_wgslsmith_index_u32(~26431u, 11u)];
    global3 = array<Struct_1, 11>();
    let var_2 = any(!vec2<bool>((var_0.x == true) && (global2.a.x != -42897i), -328f > _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(1u, 17u)]))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.x, 17u)]) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_3, 17u)])))));
}

fn func_2() -> vec4<bool> {
    global0 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, ~u_input.c.x, 2147483647i), global0.a));
    global0 = global3[_wgslsmith_index_u32(33403u, 11u)];
    var var_0 = u_input.a.x;
    global0 = global3[_wgslsmith_index_u32(u_input.a.x, 11u)];
    var_0 = 0u;
    return !(!vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1613f) >= _wgslsmith_f_op_f32(step(1253f, global1[_wgslsmith_index_u32(30090u, 17u)])), true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(func_3(Struct_1(u_input.b.zzy), u_input.a.zxw, Struct_1(global2.a), u_input.d.x)) >= _wgslsmith_f_op_f32(1000f - -200f)));
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_1(max(-vec3<i32>(~2147483647i, 42995i, max(-1i, 49302i)), -vec3<i32>(global2.a.x, max(u_input.e, 57147i), 1i)));
    let var_1 = select(select(!select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true)), select(func_2(), vec4<bool>(1918f == global1[_wgslsmith_index_u32(u_input.d.x, 17u)], true, true, any(vec3<bool>(true, true, true))), select(func_2(), vec4<bool>(false, true, false, true), func_2())), true), !vec4<bool>(!all(vec3<bool>(true, false, false)), true, select(true, select(true, true, false), true), any(vec2<bool>(true, true))), func_2());
    let var_2 = global3[_wgslsmith_index_u32(~(13758u >> ((~countOneBits(61136u) & u_input.d.x) % 32u)), 11u)];
    let var_3 = Struct_1(-(abs(vec3<i32>(u_input.c.x, var_2.a.x, -67681i)) >> (u_input.a.zww % vec3<u32>(32u))) | -(vec3<i32>(2147483647i, global0.a.x, -2147483647i) << (u_input.a.xyy % vec3<u32>(32u))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 2062f) - vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], -952f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 17u)], -153f) + vec2<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)])) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(46649u, 17u)], global1[_wgslsmith_index_u32(u_input.d.x, 17u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(274f, global1[_wgslsmith_index_u32(u_input.d.x, 17u)]))))));
    return select(~u_input.d, vec2<u32>(~(u_input.d.x << (u_input.a.x % 32u)), ~(~u_input.a.x)) << (u_input.a.xz % vec2<u32>(32u)), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.x, firstTrailingBit(func_1() | ~max(vec2<u32>(0u, u_input.a.x), u_input.d)));
}


struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec2<f32>(495f, 145f), vec2<f32>(-991f, 743f), 681f), Struct_2(vec2<f32>(1058f, 920f), vec2<f32>(-416f, 260f), -3369f), Struct_2(vec2<f32>(-483f, -800f), vec2<f32>(1239f, 323f), 1121f), Struct_2(vec2<f32>(-1436f, -1072f), vec2<f32>(1000f, 475f), 205f), Struct_2(vec2<f32>(-929f, -157f), vec2<f32>(1054f, 121f), -417f), Struct_2(vec2<f32>(-2646f, 1482f), vec2<f32>(401f, 843f), -1922f), Struct_2(vec2<f32>(-2467f, 996f), vec2<f32>(762f, 1324f), -299f));

var<private> global3: array<bool, 26> = array<bool, 26>(true, false, true, false, false, true, true, true, true, true, false, true, false, true, false, true, true, false, false, false, false, false, true, false, true, false);

var<private> global4: array<vec3<u32>, 27>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(trunc(arg_0.a.x));
}

fn func_2(arg_0: Struct_2) -> vec4<f32> {
    global0 = array<u32, 3>();
    let var_0 = ~(-select(vec3<i32>(-u_input.c.x, -2147483647i, global1.a), vec3<i32>(u_input.c.x, -u_input.c.x, _wgslsmith_mult_i32(global1.a, -2147483647i)), select(vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 26u)], true), select(vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 26u)], false), vec3<bool>(false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 26u)], false), vec3<bool>(true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 26u)], global3[_wgslsmith_index_u32(1u, 26u)])), true)));
    global2 = array<Struct_2, 7>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(arg_0.a, vec2<f32>(1215f, arg_0.b.x), arg_0.c), Struct_1(-1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x * arg_0.a.x) + arg_0.a.x) + _wgslsmith_f_op_f32(-219f * -1976f))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2146f + 297f))))) != -1409f;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1617f, 932f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))), vec4<f32>(-1610f, -877f, _wgslsmith_f_op_f32(-1599f * _wgslsmith_f_op_f32(-var_1.x)), -766f)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1134f, -634f)), vec2<f32>(1f, 1f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1245f, -234f), vec2<f32>(1000f, -128f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-658f + 1047f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1903f, -3072f)) + _wgslsmith_div_f32(-1590f, 1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(894f)), 1000f, global3[_wgslsmith_index_u32(23282u, 26u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(308f - -1393f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(35881u, 7u)], Struct_1(global1.a))) - _wgslsmith_f_op_f32(-1203f - -497f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1452f, -3011f, -407f, -1523f))))));
    return Struct_1(1i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> f32 {
    global0 = array<u32, 3>();
    global2 = array<Struct_2, 7>();
    global0 = array<u32, 3>();
    var var_0 = func_1(_wgslsmith_sub_vec4_u32(~select(~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(18792u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], 56493u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(19804u, 3u)], u_input.a, global0[_wgslsmith_index_u32(u_input.a, 3u)]), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], 4294967295u, 0u, 4294967295u)), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 26u)], global3[_wgslsmith_index_u32(u_input.a, 26u)], false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 26u)]), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 26u)], true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12828u, 3u)], 26u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 3u)], 26u)]), vec4<bool>(true, false, global3[_wgslsmith_index_u32(1226u, 26u)], false))), vec4<u32>(4294967295u, abs(firstLeadingBit(38302u)), 4294967295u, 59958u)));
    global2 = array<Struct_2, 7>();
    return -1409f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 7>();
    let var_0 = global4[_wgslsmith_index_u32(countOneBits(4294967295u), 27u)];
    global0 = array<u32, 3>();
    global4 = array<vec3<u32>, 27>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_4(func_1(~vec4<u32>(var_0.x, global0[_wgslsmith_index_u32(var_0.x, 3u)], 4294967295u, u_input.a) ^ ~vec4<u32>(87253u, u_input.a, var_0.x, global0[_wgslsmith_index_u32(var_0.x, 3u)])), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1001f, 1114f), vec2<f32>(457f, -365f))) * vec2<f32>(-1385f, -857f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(970f, 177f)), vec2<f32>(1489f, 771f), !vec2<bool>(global3[_wgslsmith_index_u32(var_0.x, 26u)], false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(269f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(166f)) * -704f))), _wgslsmith_f_op_f32(round(549f)), 1f);
    global3 = array<bool, 26>();
    var var_2 = global2[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(var_0.x, 3u)]), 7u)];
    var var_3 = func_1(firstLeadingBit((~vec4<u32>(0u, 4294967295u, var_0.x, 5137u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, var_0.x), vec4<u32>(u_input.a, 22383u, 47498u, u_input.a), vec4<u32>(32556u, 1u, var_0.x, 1u))) >> (firstTrailingBit(vec4<u32>(0u, global0[_wgslsmith_index_u32(var_0.x, 3u)], 1u, 10060u) >> (vec4<u32>(44451u, u_input.a, 1u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_4 = Struct_2(var_2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, _wgslsmith_div_f32(-150f, _wgslsmith_f_op_f32(round(509f))))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1000f, var_4.a.x, true)), _wgslsmith_f_op_f32(-294f - 1497f))), _wgslsmith_f_op_f32(-var_1.x), -214f)));
}

